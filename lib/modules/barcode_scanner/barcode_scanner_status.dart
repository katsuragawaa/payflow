import 'package:camera/camera.dart';

class BarcodeScannerStatus {
  final bool isCameraAvailable;
  final String error;
  final String barcode;
  CameraController? cameraController;
  BarcodeScannerStatus({
    this.isCameraAvailable = false,
    this.error = '',
    this.barcode = '',
    this.cameraController,
  });

  factory BarcodeScannerStatus.available(CameraController controller) {
    return BarcodeScannerStatus(
      isCameraAvailable: true,
      cameraController: controller,
    );
  }

  factory BarcodeScannerStatus.error(String message) {
    return BarcodeScannerStatus(
      error: message,
    );
  }

  factory BarcodeScannerStatus.barcode(String barcode) {
    return BarcodeScannerStatus(
      barcode: barcode,
    );
  }

  bool get showCamera => isCameraAvailable && error.isEmpty;

  bool get hasError => error.isNotEmpty;

  bool get hasBarcode => barcode.isNotEmpty;
}
