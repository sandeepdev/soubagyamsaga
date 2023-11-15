import 'package:flutter_barcode_scanner/flutter_barcode_scanner.dart';
import 'package:flutter/material.dart';
import 'package:permission_handler/permission_handler.dart';
import '../search_screen.dart';

class BarcodeScannerScreen extends StatelessWidget {
  const BarcodeScannerScreen({super.key, this.barcode});
  final String? barcode;

  @override
  Widget build(BuildContext context) {
    return SearchForm(scannedBarcode: barcode);
  }
}

// Future<String?> startBarcodeScanning(BuildContext context) async {
//   try {
//     String barcodeScanRes = await FlutterBarcodeScanner.scanBarcode(
//       "#ff6666", // Color for the scan button
//       "Cancel", // Text for the cancel button
//       true, // Should show flash icon
//       ScanMode.BARCODE, // Specify the scan mode (barcode, QR code, etc.)
//     );

//     if (barcodeScanRes == '-1') {
//       return null;

//       // Navigator.of(context).pushReplacement(MaterialPageRoute(
//       //   builder: (context) => AnotherScreen(data: barcodeScanRes),
//       // ));
//     } else {
//       return barcodeScanRes;
//     }
//   } catch (e) {
//     print('Error: $e ');
//   }
//   return null;
// }
Future<String?> startBarcodeScanning(BuildContext context) async {
  // Check if camera permission is granted
  PermissionStatus cameraPermissionStatus = await Permission.camera.status;

  if (cameraPermissionStatus.isDenied) {
    // Request camera permission
    PermissionStatus permissionStatus = await Permission.camera.request();

    if (permissionStatus.isGranted) {
      // Camera permission granted, proceed with barcode scanning
      return await scanBarcode(context);
    } else if (permissionStatus.isDenied) {
      // Camera permission denied
      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
        content: Text('Permission Is Needed for Scanning the Lottery'),
      ));
      return null;
    } else if (permissionStatus.isPermanentlyDenied) {
      // Camera permission permanently denied
      // You can show a dialog or navigate the user to settings
      openAppSettings();
      return null;
    }
  } else {
    // Camera permission already granted, proceed with barcode scanning
    return await scanBarcode(context);
  }
  return null;
}

Future<String?> scanBarcode(BuildContext context) async {
  try {
    String barcodeScanRes = await FlutterBarcodeScanner.scanBarcode(
      "#ff6666", // Color for the scan button
      "Cancel", // Text for the cancel button
      true, // Should show flash icon
      ScanMode.BARCODE, // Specify the scan mode (barcode, QR code, etc.)
    );

    if (barcodeScanRes == '-1') {
      return null;
      // Handle cancellation or other scenarios
    } else {
      return barcodeScanRes;
    }
  } catch (e) {
    return null;
  }
}

