# InvoKhata

**Offline GST & Non-GST Billing + Khata (Customer Ledger) App** for Indian retail shops.
Built with Flutter and Isar. Runs **100% offline** — embedded database, no account, no cloud, no server.

> 📚 Project docs:
> - [docs/ARCHITECTURE.md](docs/ARCHITECTURE.md) — code map, data models, GST & Khata flow
> - [docs/TROUBLESHOOTING.md](docs/TROUBLESHOOTING.md) — every problem we hit & how it was fixed (READ BEFORE BUILDING!)
> - [docs/SESSION_NOTES.md](docs/SESSION_NOTES.md) — recent work log + current state / next steps

---

## Features

- 🧾 **POS Billing** — add items by barcode scanner or picker, discounts, GST tax auto-mode
  (**IGST for inter-state customers, CGST+SGST for intra-state**), payments (cash/UPI/credit),
  paid/partial/due status tracking.
- 🛒 **Purchase** — record supplier purchase bills with bill no, date, party, phone and optional
  line items (name/qty/unit/rate/tax). Auto-generates `PUR-YYYY-NNNN` bill numbers, **increases
  inventory stock** for known items, and offsets the linked party's Khata balance.
- 📦 **Inventory** — items with HSN code, purchase/sales price, stock quantity, low-stock &
  out-of-stock alerts; unique barcode per item.
- 📒 **Khata (Ledger)** — customers & suppliers with outstanding balances; **edit party**,
  **record dues**, **record payments**, **GSTIN-based auto state detection**, full invoice history per party.
- 🖨️ **PDF Invoices** — invoice preview/print via the `pdf` & `printing` packages.
- 📊 **Dashboard** — total sales, total purchases, total dues, invoice/item counts, stock alerts
  (analytics engine in Dart).
- ⚙️ **Settings** — business profile (name, address, phone, GSTIN, state, currency, default tax rate)
  persisted as `app_settings.json` in the app documents dir.

## Tech Stack

| Layer       | Choice                                                        |
|-------------|---------------------------------------------------------------|
| Framework   | Flutter 3.41.7 stable · Dart SDK `>=3.0.0 <4.0.0`             |
| State       | Riverpod 2.5 (`StateNotifierProvider`, `FutureProvider`, `.family`) |
| Database    | Isar 3.1.0+1 (embedded, offline) + `build_runner` codegen      |
| PDF/Print   | `pdf`, `printing`                                             |
| Barcode     | `mobile_scanner`                                              |
| Misc        | `intl`, `uuid`, `file_picker`, `path_provider` |

## Project Layout

```
lib/
├── main.dart              # IsarService.init() → ProviderScope → InvoKhataApp (Material 3, blue AppColors theme)
├── core/
│   ├── database/          # isar_service.dart + Isar schemas: item, party, invoice, purchase (+ .g.dart generated)
│   ├── services/          # settings_service.dart (JSON-backed AppSettings)
│   ├── utils/             # gst_calculator, india_gst (state codes/GSTIN), pdf_generator, pdf_preview
│   └── widgets/           # app_bottom_nav (5 tabs) + app_drawer (app shell)
└── features/              # feature-first modules
    ├── dashboard/         #   analytics provider + dashboard screen
    ├── inventory/         #   item_repository + provider + add_item/inventory screens
    ├── khata/             #   party_repository + providers + khata/add_party/party_detail screens
    ├── pos/               #   pos_repository + cart_provider + pos/all_invoices screens
    ├── purchase/          #   purchase_repository + provider + all_purchases/purchase/add_purchase_item screens
    └── settings/          #   settings_screen
```

Each feature follows: `data/` (repositories) → `presentation/providers/` (Riverpod) → `presentation/screens/`.

## Navigation

- **AppBottomNav** — 5 tabs: Home (0) · POS (1) · Invoices (2) · Purchase (3) · Khata (4),
  switched via `pushReplacement`.
- **AppDrawer** — adds Inventory, Purchase and Settings (pushed on top).

## Run / Build

```bash
flutter pub get
dart run build_runner build --delete-conflicting-outputs   # only needed after editing Isar schemas
flutter run                      # run on connected device
flutter build apk --debug        # build debug APK
adb install -r build/app/outputs/flutter-apk/app-debug.apk
```

- Package / application id: **`com.invokhata.invokhata`** (android namespace `com.invokhata.invokhata`)
- No release keystore configured yet — release builds reuse the debug signing key.

> ⚠️ **BEFORE building on this dev machine (8 GB RAM):** the debug build is intentionally slow (~9 min)
> because `android/gradle.properties` caps Gradle at 2GB to avoid freezing the PC.
> **Do not raise `-Xmx` — see docs/TROUBLESHOOTING.md.**

## Tests

`flutter test` → the existing `test/widget_test.dart` fails in a pure unit-test environment
because Isar needs native platform libs (not available in `flutter test`). See
[docs/TROUBLESHOOTING.md](docs/TROUBLESHOOTING.md#4-flutter-test-fails-on-app-renders-test).
