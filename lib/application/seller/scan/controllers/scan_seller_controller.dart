import 'dart:developer';

import 'package:get/get.dart';
import 'package:flutter/cupertino.dart';
import 'package:projek_skripsi/core/components/scanner/views/scanner_page.dart';

class ScanSellerController extends GetxController {
  var fieldTotal = TextEditingController();

  void scanBarcode() async {
    var barcodeResult = await Get.to(() => QRScanner());
    if(barcodeResult != null)
      log(barcodeResult);
  }
}