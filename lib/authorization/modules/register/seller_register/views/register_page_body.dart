import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:projek_skripsi/authorization/modules/register/seller_register/controllers/register_seller_controller.dart';
import 'package:projek_skripsi/core/components/form_component.dart';
import 'package:projek_skripsi/core/components/image_component.dart';
import 'package:projek_skripsi/core/const/app_themes.dart';

class RegisterPageBody extends GetView<RegisterSellerController> {
  const RegisterPageBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Form(
      key: controller.formkey,
      child: Column(
        children: [
          FormInputText(
            title: 'Merchant Name',
            txtcontroller: controller.fieldName,
            textInputType: TextInputType.text,
            txtLine: 1,
            txtEnable: true,
            txtReadonly: false,
            mandatory: true,
            validatorMsg: 'Merchant Name is required',
          ),
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
          FormInputText(
            title: 'Confirm Password',
            txtcontroller: controller.fieldConfirmPassword,
            textInputType: TextInputType.visiblePassword,
            txtLine: 1,
            txtEnable: true,
            txtReadonly: false,
            mandatory: true,
            validatorMsg: 'Password is required',
          ),
          FormInputText(
            title: 'Phone Number',
            txtcontroller: controller.fieldPhoneNumber,
            textInputType: TextInputType.phone,
            txtLine: 1,
            txtEnable: true,
            txtReadonly: false,
            mandatory: true,
            validatorMsg: 'Phone Number is required',
          ),
          FormInputText(
            title: 'Address',
            txtcontroller: controller.fieldAddress,
            textInputType: TextInputType.text,
            txtLine: 5,
            txtEnable: true,
            txtReadonly: false,
            mandatory: true,
            validatorMsg: 'Password is required',
          ),
          const ImageForm(),
          SizedBox(height: AppThemes().extraSpacing),
          const RegisterButton()
        ],
      ),
    );
  }
}

class ImageForm extends StatelessWidget {
  const ImageForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10.0),
      child: Column(
        children: [
          Row(
            children: [
              Expanded(
                child: Text('Select Image',
                    style: AppThemes().text5Bold(color: AppThemes.blue)),
              ),
              ElevatedButton(
                onPressed: () => ImageComponent().onShowImagePicker(),
                style: ElevatedButton.styleFrom(
                    backgroundColor: AppThemes.blue,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8.0)
                    )
                ),
                child: Text(
                  'Select',
                  style: AppThemes().text5Bold(color: AppThemes.white),
                ),
              )
            ],
          ),
          SizedBox(height: AppThemes().extraSpacing),
          EmptyPhoto()
        ],
      ),
    );
  }
}

class EmptyPhoto extends StatelessWidget {
  const EmptyPhoto({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: Get.size.width,
      height: 200,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8.0),
        border: Border.all(color: AppThemes.darkBlue),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(Icons.photo,size: 80, color: Colors.grey.shade400),
          Text('No Image', style: AppThemes().text5(color: Colors.grey.shade400))
        ],
      ),
    );
  }
}

class RegisterButton extends GetView<RegisterSellerController> {
  const RegisterButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: Get.size.width,
      child: ElevatedButton(
        onPressed: () => controller.register(),
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
