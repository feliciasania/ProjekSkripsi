import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:projek_skripsi/application/seller/dashboard/controllers/dashboard_seller_controller.dart';
import 'package:projek_skripsi/core/const/app_themes.dart';

class LevelingWidget extends GetView<DashboardSellerController> {
  const LevelingWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      child: ListView.builder(
          physics: const BouncingScrollPhysics(),
          scrollDirection: Axis.horizontal,
          shrinkWrap: true,
          itemCount: 5,
          itemBuilder: (context, index) {
            return Container(
              margin: EdgeInsets.only(
                top: AppThemes().defaultSpacing,
                bottom: AppThemes().defaultSpacing,
                left: AppThemes().extraSpacing,
              ),
              padding: EdgeInsets.symmetric(
                horizontal: AppThemes().extraSpacing,
              ),
              decoration: BoxDecoration(
                color: controller.levelColors[index],
                borderRadius: BorderRadius.circular(8.0),
                boxShadow: [BoxShadow(
                    color: Colors.grey.shade500, blurRadius: 3.0, offset: Offset(0, 1))],
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Level 1',
                      style: AppThemes().text5Bold(color: AppThemes.white)),
                  SizedBox(height: AppThemes().defaultSpacing),
                  Text('Exp needed: 1000',
                      style: AppThemes().text5Bold(color: AppThemes.white)),
                  Text('+100 Coin', style: AppThemes().text5Bold(color: AppThemes.white))
                ],
              ),
            );
          }),
    );
  }
}
