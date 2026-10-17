# InvoKhata — Troubleshooting & Known Problems

> ⚠️ **READ THIS BEFORE BUILDING AGAIN.** Every problem we hit during development, the root cause,
> and the fix. If a build suddenly breaks, check here first — most failures are these known issues.

Machine context: **Ubuntu (KDE Plasma), 8 GB RAM**, Android phone via USB. Toolchain:
Flutter 3.41.7 stable, AGP **8.11.1**, Kotlin 2.2.20, Gradle from wrapper (8.x), JDK bundled.

---

## 1. Gradle OOM / PC freeze on 8 GB RAM machine  🐌 → ✅ Fixed (by design)

**Symptom:** Building the debug APK made the whole PC freeze/swap; some configs even crashed Gradle.

**Root cause:** `android/gradle.properties` originally had
`org.gradle.jvmargs=-Xmx8G -XX:MaxMetaspaceSize=4G …` — on an 8 GB machine, Gradle alone could grab
the entire RAM, starving the OS.

**Fix (current state of the file):**
```properties
# --- 8 GB RAM safe limits ---
org.gradle.jvmargs=-Xmx2G -XX:MaxMetaspaceSize=512m -XX:ReservedCodeCacheSize=256m -XX:+HeapDumpOnOutOfMemoryError
org.gradle.parallel=false
org.gradle.caching=true
org.gradle.daemon=true
org.gradle.workers.max=2
android.useAndroidX=true
```

**Consequence (accept it):** Debug build takes **~9 minutes** on this machine. That's fine — it
completes without freezing. **Do not raise `-Xmx`** unless the machine gets more RAM.
Tip: keep the phone plugged in and don't interactive with the PC during the build.

---

## 2. `Namespace not specified` — isar_flutter_libs 3.1.0+1 vs AGP 8  🔧 → ✅ Patched

**Symptom:** Gradle sync/build failed for the plugin module:
```
Namespace not specified. Specify a namespace in the module's build file...
com.android.tools.build...
.../pub-cache/hosted/pub.dev/isar_flutter_libs-3.1.0+1/android/build.gradle
```
(The plugin's manifest used the old `package=` attribute, which AGP 8 removed.)

**Fix (manual pub-cache patch — already applied):**
In `~/.pub-cache/hosted/pub.dev/isar_flutter_libs-3.1.0+1/android/build.gradle`, add
```groovy
android {
    namespace 'dev.isar.isar_flutter_libs'
    ...
}
```

**⚠️ Critical caveats for future sessions:**
- This patch lives in the **pub-cache**, NOT in this repo. It is invisible to git.
- It survives `flutter pub get` as long as the resolved version stays `3.1.0+1`.
- **If isar/isar_flutter_libs is ever upgraded (or cache wiped), the build breaks again** with the
  same error — re-apply the patch, or preferably migrate to a newer isar that ships a namespace.
- Do NOT "fix" it by editing `android/app/build.gradle.kts` — the error comes from the plugin module.

---

## 3. `adb: no permissions (missing udev rules?)` — Vivo phone  📱 → ✅ Worked around

**Symptom:** `adb devices` showed `no permissions (missing udev rules?); user is in the plugdev group`
for device `/dev/bus/usb/001/008` (Vivo vend `2d95`), or the phone prompt was dismissed.

**Sequence that worked:**
1. `adb kill-server && adb start-server`
2. On the phone: enable **USB debugging** under Developer options; accept the RSA fingerprint prompt.
3. The phone's own authorization prompt sufficed — `adb devices` switched to `device`,
   and `adb install -r build/app/outputs/flutter-apk/app-debug.apk` succeeded.

**If permission errors return:** the "proper" fix is a udev rule + replug:
```
# /etc/udev/rules.d/51-android.rules
SUBSYSTEM=="usb", ATTR{idVendor}=="2d95", MODE="0666", GROUP="plugdev"
sudo udevadm control --reload && sudo udevadm trigger
```
Target device seen so far: **Vivo V2312 (serial 10BD8S3BRP0007Y)**.

---

## 4. `flutter test` fails on the app-renders test  🧪 → ⚠️ Known, not an app bug

**Symptom:** `flutter test` fails with a native-library/platform error while
`test/widget_test.dart` tries to pump the app.

**Root cause:** `main()` calls `IsarService.init()`, which opens Isar. Isar ships native libs that
are **not available in the `flutter test` unit environment** — the failure is environmental, not
caused by app code.

**Current handling:** the test file is effectively stale/not runnable as a widget test.
**Don't chase this by writing a "mock Isar" unless you want real unit-test infra.** For device-level
verification use `flutter run` / manual testing, or migrate to `integration_test/` on a device.

---

## 5. `invalid_constant` analyzer error in `add_party_screen.dart`  🧹 → ✅ Fixed

**Symptom:** `flutter analyze` reported `invalid_constant` on a `const InputDecoration`.

**Root cause:** a conditional expression (`... ? ... : ...`) inside a `const` constructor — you
can't have a non-const expression in a const constructor call.

**Fix:** move `const` to the child arguments (e.g. `border: const OutlineInputBorder(...)`) and drop
`const` from the surrounding `InputDecoration`.

---

## 6. Misc build/perf notes that will save you time

- **First build after a cache wipe is slow** (`flutter pub get` + `build_runner` + Gradle ~9 min).
  Subsequent builds use `org.gradle.caching=true` + `daemon=true`.
- `dart run build_runner build --delete-conflicting-outputs` **must** be re-run whenever an Isar
  schema (`item.dart`, `party.dart`, `invoice.dart`) changes — otherwise `.g.dart` is stale and
  runtime throws schema mismatch errors.
- Isar was opened with `inspector: true` — harmless in debug, zero overhead for our use.
- **Install flow always worked:** `flutter build apk --debug` then
  `adb install -r build/app/outputs/flutter-apk/app-debug.apk`. The `-r` keeps app data on reinstall.
- App package `com.invokhata.invokhata` — if a future `flutter create .` regenerates platform
  folders, re-verify the applicationId/namespace.