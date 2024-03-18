import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:projek_skripsi/core/const/app_themes.dart';
import 'package:qr_code_scanner/qr_code_scanner.dart';
import '../controllers/scanner_controller.dart';

class QRScanner extends StatelessWidget {
  final QRScannerController _scanQRController = Get.put(QRScannerController());

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        _scanQRController.controller!.stopCamera();
        return true;
      },
      child: Scaffold(
        body: QRView(
          key: _scanQRController.qrKey,
          onQRViewCreated: _scanQRController.onQRViewCreated,
          overlay: QrScannerOverlayShape(
              borderColor: AppThemes.blue,
              borderRadius: 10,
              borderLength: 30,
              borderWidth: 10,
              cutOutSize: Get.size.width * 0.8)
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
        floatingActionButton: FloatingActionButton.extended(
          onPressed: () => _scanQRController.clickFlash(),
          backgroundColor: AppThemes.blue,
          icon: Obx(() => _scanQRController.isFlash.value
              ? const Icon(
            Icons.flash_on,
            color: AppThemes.white,
          )
              : const Icon(
            Icons.flash_off,
            color: Colors.white,
          )),
          label: const Text(
            'Flash',
            style: TextStyle(color: AppThemes.white),
          ),
        ),
      ),
    );
  }
}
