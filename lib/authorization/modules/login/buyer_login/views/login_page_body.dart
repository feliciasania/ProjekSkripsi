import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:projek_skripsi/core/const/app_themes.dart';
import 'package:projek_skripsi/core/components/form_component.dart';
import 'package:projek_skripsi/authorization/modules/login/buyer_login/controllers/login_buyer_controller.dart';

class LoginPageBody extends GetView<LoginBuyerController> {
  const LoginPageBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: Get.size.width * .8,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          FormInputText(
              title: 'Email',
              txtcontroller: controller.fieldEmail,
              textInputType: TextInputType.emailAddress,
              txtLine: 1,
              txtEnable: true,
              txtReadonly: false,
              mandatory: true
          ),
          FormInputText(
              title: 'Password',
              txtcontroller: controller.fieldPassword,
              textInputType: TextInputType.emailAddress,
              txtLine: 1,
              txtEnable: true,
              txtReadonly: false,
              mandatory: true
          ),
          SizedBox(height: AppThemes().extraSpacing),
          GestureDetector(
              onTap: () {},
              child: Text(
                'Forget Password?',
                style: AppThemes().text5(color: AppThemes.lightBlue),
              ),
          ),
          SizedBox(height: AppThemes().veryExtraSpacing),
          SizedBox(
            width: Get.size.width,
            child: ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                elevation: 3,
                backgroundColor: AppThemes.blue,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8.0)
                ),
              ),
              child: Text(
                'Login',
                style: AppThemes().text4Bold(color: AppThemes.white),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
