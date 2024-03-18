import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:projek_skripsi/core/const/app_themes.dart';

class StorePageHeader extends StatelessWidget {
  const StorePageHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: Get.size.width,
      margin: EdgeInsets.only(
        bottom: Get.size.height * .05
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
              width: Get.size.height * .13,
              height: Get.size.height * .13,
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  image: const DecorationImage(
                      image: AssetImage('assets/photo/photo_1.jpeg'),
                      fit: BoxFit.cover
                  ),
                  border: Border.all(color: Colors.grey.shade300)
              )
          ),
          SizedBox(height: AppThemes().extraSpacing),
          SizedBox(
              width: Get.size.width * .8,
            child: Text(
              'Albert Silva',
              style: AppThemes().text5Bold(color: AppThemes.white),
              textAlign: TextAlign.center,
            ),
          ),
          SizedBox(height: AppThemes().defaultSpacing),
          SizedBox(
            width: Get.size.width * .8,
            child: Text(
              'albert.silva@gmail.com',
              style: AppThemes().text5(color: AppThemes.white),
              textAlign: TextAlign.center,
            ),
          ),
          SizedBox(height: AppThemes().defaultSpacing),
          SizedBox(
            width: Get.size.width * .8,
            child: Text(
              '085123123123',
              style: AppThemes().text5(color: AppThemes.white),
              textAlign: TextAlign.center,
            ),
          )
        ],
      ),
    );
  }
}
