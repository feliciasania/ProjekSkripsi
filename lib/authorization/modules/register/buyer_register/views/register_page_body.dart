import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:projek_skripsi/authorization/modules/register/buyer_register/controllers/register_buyer_controller.dart';
import 'package:projek_skripsi/core/components/form_component.dart';
import 'package:projek_skripsi/core/const/app_themes.dart';

class RegisterPageBody extends GetView<RegisterBuyerController> {
  const RegisterPageBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        FormInputText(
          title: 'Name',
          txtcontroller: controller.fieldName,
          textInputType: TextInputType.text,
          txtLine: 1,
          txtEnable: true,
          txtReadonly: false,
          mandatory: true,
          validatorMsg: 'Name is required',
        ),
        FormInputText(
          title: 'Email',
          txtcontroller: controller.fieldName,
          textInputType: TextInputType.emailAddress,
          txtLine: 1,
          txtEnable: true,
          txtReadonly: false,
          mandatory: true,
          validatorMsg: 'Email is required',
        ),
        FormInputText(
          title: 'Password',
          txtcontroller: controller.fieldName,
          textInputType: TextInputType.visiblePassword,
          txtLine: 1,
          txtEnable: true,
          txtReadonly: false,
          mandatory: true,
          validatorMsg: 'Password is required',
        ),
        FormInputText(
          title: 'Confirm Password',
          txtcontroller: controller.fieldName,
          textInputType: TextInputType.visiblePassword,
          txtLine: 1,
          txtEnable: true,
          txtReadonly: false,
          mandatory: true,
          validatorMsg: 'Confirm Password is required',
        ),
        SizedBox(height: AppThemes().extraSpacing),
        RegisterButton()
      ],
    );
  }
}

class RegisterButton extends StatelessWidget {
  const RegisterButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
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
          'Register',
          style: AppThemes().text4Bold(color: AppThemes.white),
        ),
      ),
    );
  }
}
