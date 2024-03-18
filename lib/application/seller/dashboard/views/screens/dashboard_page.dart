import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:projek_skripsi/application/seller/dashboard/views/screens/dashboard_page_header.dart';
import 'package:projek_skripsi/application/seller/dashboard/views/screens/dashboard_page_body.dart';

class SellerDashboardPage extends StatelessWidget {
  const SellerDashboardPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: Get.size.width,
          height: Get.size.height * .3,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/photo/photo_1.jpeg'),
              fit: BoxFit.cover
            )
          ),
        ),
        Container(
          margin: EdgeInsets.only(
            top: Get.size.height * .27,
          ),
          child: const DashboardPageHeader()
        ),
        Container(
            margin: EdgeInsets.only(
              top: Get.size.height * .35,
            ),
            // height: Get.size.height * .65,
            child: const DashboardPageBody()
        )
      ],
    );
  }
}
