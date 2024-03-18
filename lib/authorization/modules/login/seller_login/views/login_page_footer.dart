import 'dart:developer';

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:projek_skripsi/core/const/app_themes.dart';
import 'package:projek_skripsi/utils/routes.dart';

class LoginPageFooter extends StatelessWidget {
  const LoginPageFooter({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        text: "Don't have any account? ",
        style: AppThemes().text4(color: AppThemes.blue),
        children: [
          TextSpan(
              text: "Sign Up",
              style: AppThemes().text4Bold(color: AppThemes.blue),
              recognizer: TapGestureRecognizer()..onTap = () {
                Get.toNamed(AppRoutes.sellerregister);
              },
          ),
        ],
      ),
    );
  }
}
