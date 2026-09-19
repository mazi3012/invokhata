# InvoKhata — Architecture

> Updated: Sept 2026 · Flutter 3.41.7 · Riverpod 2.5 · Isar 3.1.0+1 · 100% offline

## 1. Boot sequence

```
main()
 ├─ WidgetsFlutterBinding.ensureInitialized()
 ├─ await IsarService.init()          # opens Isar with [ItemSchema, PartySchema, InvoiceSchema]
 │                                    #   in getApplicationDocumentsDirectory(); inspector: true
 └─ runApp(ProviderScope(child: InvoKhataApp()))
      └─ MaterialApp (Material 3, AppTheme built on the blue AppColors palette)
           └─ home: DashboardScreen
```

- Every screen is a `ConsumerWidget`/`ConsumerStatefulWidget`; state comes from Riverpod providers.
- Providers hold direct `Isar` handles (`IsarService.isar`) — repositories were introduced but some
  providers still talk to Isar directly (e.g. `PartyNotifier`, `AnalyticsRepository`).

## 2. Data models (Isar, `lib/core/database/schemas/`)

### Party (`party.dart`)
| Field | Notes |
|---|---|
| `id` | `Isar.autoIncrement` |
| `name` | indexed (value) |
| `phoneNumber` | indexed, nullable |
| `gstin` / `state` / `address` | nullable; GSTIN + state drive tax mode in POS |
| `partyType` | `'customer'` or `'supplier'` |
| `outstandingBalance` | **+ = customer owes you (due) · – = you owe them (advance)** |
| `createdAt` | auto `DateTime.now()` |

### Item (`item.dart`)
`name` (indexed), `barcode` (**unique, replace**), `hsnCode`, `purchasePrice`, `salesPrice`,
`stockQuantity`, `minStockThreshold` (default 5), `unit` (default `'Pcs'`), `isGst`,
`gstRate` (default 18; standard slabs 0/5/12/18/28).

### Invoice (`invoice.dart`)
Encapsulates the **snapshot of a sale**. Stores the party's name/GSTIN/state directly so history
survives later party edits.

| Group | Fields |
|---|---|
| Party snapshot | `partyId`, `partyName`, `partyPhone`, `partyGstin`, `partyState` |
| Tax | `isGstInvoice`, `placeOfSupplyState`, `taxMode` (`'intra_state'`/`'inter_state'`) |
| Money | `subtotal`, `totalGst`, `totalCgst`, `totalSgst`, `totalIgst`, `discountAmount`, `grandTotal` |
| Payment | `paidAmount`, `dueAmount`, `paymentStatus` (`'paid'`/`'partially_paid'`/`'unpaid'`), `paymentMode` (`'cash'`/`'upi'`/`'bank_transfer'`/`'credit'`) |
| Lines | `List<InvoiceLineItem>` (@embedded: itemId, itemName, hsnCode, qty, unitPrice, gstRate, gstAmount, cgst/sgst/igst, totalPrice) |
| Meta | `invoiceNumber` (**unique, replace**; format `INV-<millis-epoch tail>`), `invoiceDate` |

## 3. GST engine

### `core/utils/gst_calculator.dart`
`GstCalculator.calculateItemTax(unitPrice, quantity, gstRatePercent, isInterState, {isTaxInclusive=false})`
→ `GstCalculationResult { taxableAmount, cgst, sgst, igst, totalGst, grandTotal }`.

- **Intra-state** (`isInterState:false`) → GST splits into CGST + SGST (half each).
- **Inter-state** (`isInterState:true`) → 100% IGST.
- Default is tax-exclusive; `isTaxInclusive` backs out the tax from an inclusive price.

### `core/utils/india_gst.dart`
- `indiaStates` — 36 states/UTs (display list).
- `_gstStateCodes` — 2-digit GST state code → state name (incl. 37 → 'Andhra Pradesh', 38 → 'Ladakh').
- `stateFromGstin(gstin)` — validates `^\d{2}[A-Z0-9]{13}$`, returns state or `null`.
- `isValidGstin`, `normalizeGstin` (trim + uppercase).

## 4. Tax-mode auto-selection (POS) — the "auto IGST for inter-state" logic

`CartState` (in `lib/features/pos/presentation/providers/cart_provider.dart`):

```dart
bool get isInterState {
  if (taxMode == 'igst') return true;
  if (taxMode == 'cgst_sgst') return false;
  final supplyState = placeOfSupplyState ?? selectedParty?.state;
  return supplyState != null && supplyState.isNotEmpty &&
         sellerState.isNotEmpty && supplyState != sellerState;
}
```

- `sellerState` comes from Settings (`businessState`, default **Assam**).
- `selectParty(party)` auto-fills `placeOfSupplyState` from `party.state ?? stateFromGstin(party.gstin)`.
- Derived totals (`subtotal`, `totalGst`, `totalCgst/Sgst/Igst`, `grandTotal`) are computed getters,
  then materialized into the `Invoice` in `checkout(paidAmount)`.
- `checkout()` builds the `Invoice`, computes `due = max(grandTotal - paid, 0)`, sets
  `paymentStatus`, and writes everything via `posRepository.createInvoiceAndProcessSale`.

### `checkout` side effects (POSRepository.createInvoiceAndProcessSale)
1. Persist invoice.
2. **Deduct stock** per line (`stockQuantity -= quantity`) when `itemId != null`.
3. **Add dues** to party: `party.outstandingBalance += invoice.dueAmount` when `partyId != null && dueAmount > 0`.

## 5. Khata flow

- **`partyProvider`** (`StateNotifierProvider<PartyNotifier, AsyncValue<List<Party>>>`):
  - `addParty(Party | name[, phone])`, `updateParty(Party)`, `recordDues(partyId, amount)` (adds),
    `addPayment(partyId, amount)` (subtracts, **floored at 0**), `loadParties()`.
  - Every mutation calls `loadParties()` so all watchers refresh → live balances.
  - Note: `addPayment` clamps below zero, so you cannot over-pay a balance to negative with this method.
- **`partyInvoicesProvider`** — `FutureProvider.family<List<Invoice>, int>(partyId)`, filtered
  by `partyId`, sorted newest first.
- **KhataScreen** — list of parties w/ live balances (red = due, green = paid up). FAB = quick
  add (name + phone only). Tap → `PartyDetailScreen`.
- **PartyDetailScreen** — watches `partyProvider` and looks up party by `id` (**activeParty**),
  so balance updates instantly after dues/payments. Shows profile, invoice history (tap → PDF).
  - FAB **Edit** → full edit dialog (type segmented, name, phone, GSTIN → **auto-fills state**,
    state dropdown, address, editable balance) → `updateParty`.
  - Footer **Record Dues** (orange) → `recordDues` (positive adds to balance, negative reduces).
  - Footer **Record Payment** (green) → `addPayment`.
- **AddPartyScreen** — full add/edit form used from Khata and reused for editing via
  `partyToEdit` param (same GSTIN→state logic, no duplicated code). Balance label changes
  with mode: "Opening Balance" (add) vs "Current Balance" (edit).

## 6. Settings (`core/services/settings_service.dart`)

`AppSettings` + `SettingsNotifier`; persisted as JSON in
`{documents}/app_settings.json`. Defaults: name `INVOKHATA RETAIL`, state **Assam**, GSTIN
`GSTIN123456789`, currency `₹`, default tax 5%.

## 7. Dashboard analytics (`features/dashboard/presentation/providers/dashboard_provider.dart`)

`analyticsProvider` (FutureProvider) → `AnalyticsRepository.getDashboardStats()`:
- `totalSales` = Σ invoice.grandTotal · `totalDue` = Σ positive `outstandingBalance`
- `invoiceCount`, `itemCount` · `lowStockCount` = `0 < stock <= 5` · `outOfStockCount` = `stock <= 0`

## 8. Gotchas & conventions

- **No cascade deletes** — deleting a party does NOT cascade to invoices or stock. Invoices
  store a snapshot of party data. Soft consistency.
- Money is plain `double` (currency rounding risk — known technical debt).
- Navigation uses `Navigator.pushReplacement` for tabs (stack stays shallow).
- Feature modules have repositories (`*_repository.dart`) but some providers bypass them and hit
  `IsarService.isar` directly — refactor target for consistency.
- `AddPartyScreen` vs KhataScreen's quick-add dialog: KhataScreen's FAB is a minimal dialog;
  the full `AddPartyScreen` is the richer form (both call `partyProvider`).
- **Android package**: `com.invokhata.invokhata` — any new native code must use this namespace.
