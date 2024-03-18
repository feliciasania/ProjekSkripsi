import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:projek_skripsi/application/seller/scan/controllers/scan_seller_controller.dart';
import 'package:projek_skripsi/application/seller/scan/views/screens/scan_page_body.dart';
import 'package:projek_skripsi/core/const/app_themes.dart';

class SellerScanPage extends StatelessWidget {
  const SellerScanPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var controller = Get.put(ScanSellerController());
    return Scaffold(
        backgroundColor: AppThemes.white,
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: AppThemes.blue,
          title: Text('Scan QR',
              style: AppThemes().text3Bold(color: AppThemes.white)),
        ),
        body: ScanPageBody(),
    );
  }
}
