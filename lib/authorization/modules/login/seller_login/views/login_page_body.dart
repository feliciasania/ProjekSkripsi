import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:projek_skripsi/core/const/app_themes.dart';
import 'package:projek_skripsi/core/components/form_component.dart';
import 'package:projek_skripsi/authorization/modules/login/seller_login/controllers/login_seller_controller.dart';
import 'package:projek_skripsi/utils/routes.dart';

class LoginPageBody extends GetView<LoginSellerController> {
  const LoginPageBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: Get.size.width * .8,
      child: Form(
        key: controller.formkey,
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
                mandatory: true,
                validatorMsg: 'Email is required',
            ),
            FormInputText(
                title: 'Password',
                txtcontroller: controller.fieldPassword,
                textInputType: TextInputType.visiblePassword,
                txtLine: 1,
                txtEnable: true,
                txtReadonly: false,
                mandatory: true,
                validatorMsg: 'Password is required',
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
                onPressed: () => controller.login(),
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
      ),
    );
  }
}
