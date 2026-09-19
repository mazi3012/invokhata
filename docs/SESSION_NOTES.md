# InvoKhata — Session Notes / Current State

> Purpose: a "glimpse" doc for resuming work. Read this + ARCHITECTURE.md before touching code.
> Last updated: Sept 11, 2026.

## Current milestone (in flight)

**Goal:** Customer editing, dues recording, and GSTIN-based auto-state selection in the Khata
module, with **automatic IGST selection in POS for inter-state customers**.

### ✅ Done
| Item | Where |
|---|---|
| `updateParty`, `recordDues`, `addPayment` in khata provider | `lib/features/khata/presentation/providers/party_provider.dart` |
| `AddPartyScreen` supports **Add + Edit** modes via `partyToEdit` param | `lib/features/khata/presentation/screens/add_party_screen.dart` |
| `PartyDetailScreen` has **Edit / Record Dues / Record Payment** dialogs; balance updates live via `ref.watch(partyProvider)` | `lib/features/khata/presentation/screens/party_detail_screen.dart` |
| Fixed pre-existing `const` error in `add_party_screen.dart` | `add_party_screen.dart` |
| Fixed `isar_flutter_libs` AGP 8 namespace error in plugin's `build.gradle` | `~/.pub-cache/.../isar_flutter_libs-3.1.0+1/android/build.gradle` |
| Optimized `gradle.properties` for 8 GB RAM (capped JVM to 2G heap) | `android/gradle.properties` |
| Built debug APK, installed on Vivo phone via adb | package `com.invokhata.invokhata` |

### 🧪 In progress / Blocked
- **None.** (POS IGST inter-state behavior is implemented but **not yet runtime-validated** — see Next.)

### ✅ Highlights worth remembering
- Gradle JVM had been `-Xmx8G`, freezing the 8 GB PC — capped to `-Xmx2G`.
- `isar_flutter_libs 3.1.0+1` required a manual namespace patch in the **pub-cache** — it is NOT
  in git; it breaks again on package upgrade/cache wipe.
- ADB permission issue was resolved by the user allowing USB debugging from the phone prompt.
- Test device: **Vivo V2312 (serial 10BD8S3BRP0007Y)**.

## What a fresh session should do first
1. Read `docs/TROUBLESHOOTING.md` (esp. §1 RAM, §2 pub-cache namespace, §3 adb).
2. `flutter pub get` + (only if schemas changed) `dart run build_runner build --delete-conflicting-outputs`.
3. Build is **slow (~9 min)** — start it early or test hot-reload via `flutter run`.
4. Check `git status` / diff to see what's staged vs new.

## Next steps (prioritized)
1. **User testing of the installed app** on the phone:
   - edit a customer (change GSTIN → state auto-fills),
   - record dues / payments and watch the Khata balance & dashboard `totalDue` update,
   - POS: select an inter-state customer → verify invoice shows **IGST** (not CGST/SGST).
2. **Verify POS repository** correctly records dues and applies IGST for inter-state customers —
   the logic (`cart_provider.checkout` → `pos_repository.createInvoiceAndProcessSale`) is
   implemented but **not runtime-validated** end-to-end.
3. **Release keystore**: generate a signing keystore for smaller, faster release builds
   (currently release builds reuse the debug key).
4. Optionally: real unit tests (Isar needs device/integration harness; see TROUBLESHOOTING §4),
   and consolidating providers onto repositories (ARCHITECTURE §8).

## Known technical debt / refactor targets
- Money stored as `double` — switch to integer paise or a money type for accounting accuracy.
- `addPayment` floors balance at 0 → can't record credit balance (advance) via this path.
- `partyProvider` writes Isar directly instead of going through `PartyRepository`
  (same for `AnalyticsRepository`).
- Deleting a party doesn't cascade to invoices (snapshot design — intentional, but be aware).
- Invoice numbers are `INV-<millis tail>` — unstructured; a proper year sequence
  (`INV-2026-0001`) is mentioned in the schema comment but not implemented.
- Only debug signing used; no release keystore yet.