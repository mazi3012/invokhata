import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:mobile_scanner/mobile_scanner.dart';

import '../theme/app_colors.dart';

/// A full-screen barcode scanner built on `mobile_scanner`, which uses
/// **Google ML Kit** (CameraX + ML Kit Barcode Scanning) on Android and
/// **Apple Vision** on iOS/macOS under the hood.
///
/// Pops with the scanned raw barcode value ([String]) when a code is
/// successfully detected, or `null` when dismissed by the user.
///
/// Usage:
/// ```dart
/// final code = await Navigator.push<String>(
///   context,
///   MaterialPageRoute(builder: (_) => const BarcodeScannerScreen()),
/// );
/// ```
class BarcodeScannerScreen extends StatefulWidget {
  /// The title shown in the scanner's app bar.
  final String title;

  /// Short helper line shown under the scan window.
  final String hintText;

  const BarcodeScannerScreen({
    super.key,
    this.title = 'Scan Barcode',
    this.hintText = 'Align the barcode inside the frame',
  });

  @override
  State<BarcodeScannerScreen> createState() => _BarcodeScannerScreenState();
}

/// Flashlight modes cycled by the AppBar button: Off → On → Auto → Off.
///
/// `mobile_scanner` only exposes a binary `toggleTorch()` on the Dart side.
/// A true `TorchState.auto` is natively supported only on iOS/macOS; on the
/// Android CameraX backend the torch in Auto mode is left off so the camera
/// can auto-manage exposure in low light.
enum _TorchMode { off, on, auto }

class _BarcodeScannerScreenState extends State<BarcodeScannerScreen> {
  final MobileScannerController _controller = MobileScannerController(
    // Focus on the formats a shop actually scans: EAN/UPC retail codes,
    // Code 39/93/128 internal & logistics codes, and QR (e.g. GST/B2B).
    // Fewer requested formats = faster ML Kit per-frame matching than `all`.
    formats: const [
      BarcodeFormat.ean8,
      BarcodeFormat.ean13,
      BarcodeFormat.upcA,
      BarcodeFormat.upcE,
      BarcodeFormat.code39,
      BarcodeFormat.code93,
      BarcodeFormat.code128,
      BarcodeFormat.qrCode,
    ],
    // unrestricted = ML Kit reports on the very first successful detection
    // with no duplicate-filtering or inter-frame timeouts. The screen pops
    // right away on the first hit (via `_handled`), so this is the fastest
    // option for shop-floor scanning.
    detectionSpeed: DetectionSpeed.unrestricted,
    // ML Kit auto-zoom (Android) for small/tight barcodes.
    autoZoom: true,
    autoStart: true,
    torchEnabled: false,
  );

  _TorchMode _torchMode = _TorchMode.off;
  bool _handled = false;

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  Future<void> _handleBarcode(BarcodeCapture capture) async {
    if (_handled) return;

    String? value;
    for (final barcode in capture.barcodes) {
      final raw = barcode.rawValue;
      if (raw != null && raw.trim().isNotEmpty) {
        value = raw.trim();
        break;
      }
    }
    if (value == null) return;

    _handled = true;
    // Give the shopkeeper a small tactile + audible confirmation.
    HapticFeedback.mediumImpact();
    await SystemSound.play(SystemSoundType.click);

    if (mounted) Navigator.of(context).pop(value);
  }

  Future<void> _cycleTorch() async {
    final next = switch (_torchMode) {
      _TorchMode.off => _TorchMode.on,
      _TorchMode.on => _TorchMode.auto,
      _TorchMode.auto => _TorchMode.off,
    };
    _torchMode = next;

    // Keep the hardware torch aligned with the selected mode. `toggleTorch()`
    // flips between on/off; for Auto we leave the torch off and let the camera
    // auto-manage exposure (true auto flash is iOS/macOS native).
    final current = _controller.value.torchState;
    final wantOn = next == _TorchMode.on;
    if ((wantOn && current != TorchState.on) ||
        (!wantOn && current == TorchState.on)) {
      await _controller.toggleTorch();
    }
    if (mounted) setState(() {});
  }

  IconData get _torchIcon => switch (_torchMode) {
        _TorchMode.off => Icons.flash_off,
        _TorchMode.on => Icons.flash_on,
        _TorchMode.auto => Icons.flash_auto,
      };

  Color get _torchColor =>
      _torchMode == _TorchMode.on ? AppColors.accent : Colors.white;

  String get _torchTooltip => switch (_torchMode) {
        _TorchMode.off => 'Flashlight: Off',
        _TorchMode.on => 'Flashlight: On',
        _TorchMode.auto => 'Flashlight: Auto',
      };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        foregroundColor: Colors.white,
        elevation: 0,
        title: Text(
          widget.title,
          style: const TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
        ),
        actions: [
          IconButton(
            tooltip: _torchTooltip,
            icon: Icon(_torchIcon, color: _torchColor),
            onPressed: _cycleTorch,
          ),
          IconButton(
            tooltip: 'Switch camera',
            icon: const Icon(Icons.cameraswitch_outlined),
            onPressed: () => _controller.switchCamera(),
          ),
        ],
      ),
      body: Stack(
        fit: StackFit.expand,
        children: [
          LayoutBuilder(
            builder: (context, constraints) {
              // Centered scan window sized relative to the preview area.
              final scanWindow = Rect.fromCenter(
                center: Offset(
                  constraints.maxWidth / 2,
                  constraints.maxHeight / 2 - 12,
                ),
                width: constraints.maxWidth * 0.82,
                height: constraints.maxWidth * 0.46,
              );

              return MobileScanner(
                controller: _controller,
                scanWindow: scanWindow,
                fit: BoxFit.cover,
                onDetect: _handleBarcode,
                errorBuilder: (context, error) =>
                    _CameraErrorView(exception: error),
                overlayBuilder: (context, constraints) =>
                    _ScannerOverlay(scanWindow: scanWindow),
              );
            },
          ),
          // Bottom helper strip.
          Positioned(
            left: 0,
            right: 0,
            bottom: 0,
            child: Container(
              color: Colors.black.withValues(alpha: 0.72),
              padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 18),
              child: SafeArea(
                top: false,
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Icon(Icons.center_focus_weak,
                        color: Colors.white70, size: 18),
                    const SizedBox(width: 8),
                    Flexible(
                      child: Text(
                        widget.hintText,
                        style: const TextStyle(
                            color: Colors.white70, fontSize: 13.5),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

/// Dark dimmed overlay with a bright cut-out and corner brackets
/// around the active [scanWindow].
class _ScannerOverlay extends StatelessWidget {
  final Rect scanWindow;

  const _ScannerOverlay({required this.scanWindow});

  @override
  Widget build(BuildContext context) {
    return Stack(
      fit: StackFit.expand,
      children: [
        // Dim the area outside the scan window.
        CustomPaint(
          painter: _OverlayPainter(scanWindow: scanWindow),
        ),
        // Corner brackets for the scan window.
        Positioned.fromRect(
          rect: scanWindow,
          child: const IgnorePointer(child: _CornerBrackets()),
        ),
        // Thin zebra-style guide line in the middle of the window.
        Positioned.fromRect(
          rect: scanWindow,
          child: const IgnorePointer(
            child: Align(
              alignment: Alignment.center,
              child: SizedBox(
                height: 2,
                width: 148,
                child: DecoratedBox(
                  decoration: BoxDecoration(
                    color: Colors.white54,
                    borderRadius: BorderRadius.all(Radius.circular(1)),
                  ),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}

class _OverlayPainter extends CustomPainter {
  final Rect scanWindow;

  _OverlayPainter({required this.scanWindow});

  @override
  void paint(Canvas canvas, Size size) {
    final dimPaint = Paint()..color = Colors.black.withValues(alpha: 0.55);
    final path = Path.combine(
      PathOperation.difference,
      Path()..addRect(Offset.zero & size),
      Path()
        ..addRRect(
            RRect.fromRectAndRadius(scanWindow, const Radius.circular(14))),
    );
    canvas.drawPath(path, dimPaint);
  }

  @override
  bool shouldRepaint(_OverlayPainter oldDelegate) =>
      oldDelegate.scanWindow != scanWindow;
}

class _CornerBrackets extends StatelessWidget {
  const _CornerBrackets();

  @override
  Widget build(BuildContext context) {
    return const CustomPaint(painter: _CornerBracketsPainter());
  }
}

class _CornerBracketsPainter extends CustomPainter {
  const _CornerBracketsPainter();

  @override
  void paint(Canvas canvas, Size size) {
    const length = 26.0;
    const stroke = 4.0;
    // ignore: prefer_const_declarations
    final paint = Paint()
      ..color = Colors.white
      ..strokeWidth = stroke
      ..strokeCap = StrokeCap.round
      ..style = PaintingStyle.stroke;

    const m = stroke / 2;

    // ┌  Top-left corner:
    canvas.drawLine(const Offset(m, m + length), const Offset(m, m), paint);
    canvas.drawLine(const Offset(m, m), const Offset(m + length, m), paint);
    // ┐  Top-right corner:
    canvas.drawLine(
        Offset(size.width - m - length, m), Offset(size.width - m, m), paint);
    canvas.drawLine(
        Offset(size.width - m, m), Offset(size.width - m, m + length), paint);
    // └  Bottom-left corner:
    canvas.drawLine(
        Offset(m, size.height - m), Offset(m + length, size.height - m), paint);
    canvas.drawLine(
        Offset(m, size.height - m), Offset(m, size.height - m - length), paint);
    // ┘  Bottom-right corner:
    canvas.drawLine(Offset(size.width - m, size.height - m),
        Offset(size.width - m - length, size.height - m), paint);
    canvas.drawLine(Offset(size.width - m, size.height - m),
        Offset(size.width - m, size.height - m - length), paint);
  }

  @override
  bool shouldRepaint(_CornerBracketsPainter oldDelegate) => false;
}

/// Friendly error state: camera permission denied, no camera, or launch error.
class _CameraErrorView extends StatelessWidget {
  final MobileScannerException exception;

  const _CameraErrorView({required this.exception});

  String get _message {
    switch (exception.errorCode) {
      case MobileScannerErrorCode.permissionDenied:
        return 'Camera permission is required to scan barcodes.\n'
            'Enable camera access in App Settings to continue.';
      case MobileScannerErrorCode.unsupported:
        return 'Barcode scanning is not supported on this device.';
      case MobileScannerErrorCode.genericError:
      case MobileScannerErrorCode.controllerUninitialized:
      case MobileScannerErrorCode.controllerNotAttached:
      case MobileScannerErrorCode.controllerInitializing:
      case MobileScannerErrorCode.controllerAlreadyInitialized:
      case MobileScannerErrorCode.controllerDisposed:
        return 'The camera could not be started.\n'
            'Please try again in a moment.';
    }
  }

  IconData get _icon {
    switch (exception.errorCode) {
      case MobileScannerErrorCode.permissionDenied:
        return Icons.no_photography_outlined;
      case MobileScannerErrorCode.unsupported:
        return Icons.videocam_off_outlined;
      case MobileScannerErrorCode.genericError:
      case MobileScannerErrorCode.controllerUninitialized:
      case MobileScannerErrorCode.controllerNotAttached:
      case MobileScannerErrorCode.controllerInitializing:
      case MobileScannerErrorCode.controllerAlreadyInitialized:
      case MobileScannerErrorCode.controllerDisposed:
        return Icons.error_outline;
    }
  }

  @override
  Widget build(BuildContext context) {
    return ColoredBox(
      color: const Color(0xFF121212),
      child: Center(
        child: Padding(
          padding: const EdgeInsets.all(32),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Icon(_icon, color: Colors.white70, size: 56),
              const SizedBox(height: 16),
              Text(
                _message,
                textAlign: TextAlign.center,
                style: const TextStyle(color: Colors.white, fontSize: 15),
              ),
              const SizedBox(height: 20),
              ElevatedButton.icon(
                style: ElevatedButton.styleFrom(
                  backgroundColor: AppColors.primary,
                  foregroundColor: Colors.white,
                ),
                onPressed: () => Navigator.of(context).pushReplacement(
                  MaterialPageRoute(
                    builder: (_) => const BarcodeScannerScreen(),
                  ),
                ),
                icon: const Icon(Icons.refresh, size: 18),
                label: const Text('Try Again'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
