import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:projek_skripsi/core/const/app_assets.dart';
import 'package:projek_skripsi/core/const/app_themes.dart';

class LoginPageHeader extends StatelessWidget {
  const LoginPageHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: Get.size.width * .8,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(AppAssets.buyerlogin),
          SizedBox(height: AppThemes().extraSpacing),
          Text('Welcome Back Hunter,',
              style: AppThemes().text3Bold(color: AppThemes.lightBlue)),
          // SizedBox(height: AppThemes().defaultSpacing),
          const Text(
            "Carry on your discovery journey to unlock exclusive promotions",
          )
        ],
      ),
    );
  }
}
