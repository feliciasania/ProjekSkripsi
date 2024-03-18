import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:projek_skripsi/application/seller/edit_store/views/widgets/dialog_widget.dart';
import 'package:projek_skripsi/core/components/image_component.dart';
import 'package:projek_skripsi/core/const/app_themes.dart';
import 'package:projek_skripsi/core/components/form_component.dart';
import 'package:projek_skripsi/application/seller/edit_store/controllers/edit_store_controller.dart';

class EditStorePageBody extends GetView<EditStoreController> {
  const EditStorePageBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        FormInputText(
          title: 'Merchant Name',
          txtcontroller: controller.fieldMerchantName,
          textInputType: TextInputType.text,
          txtLine: 1,
          txtEnable: true,
          txtReadonly: false,
          mandatory: true,
          validatorMsg: 'Merchant Name is required',
        ),
        FormInputText(
          title: 'Email',
          txtcontroller: controller.fieldMerchantName,
          textInputType: TextInputType.emailAddress,
          txtLine: 1,
          txtEnable: true,
          txtReadonly: false,
          mandatory: true,
          validatorMsg: 'Email is required',
        ),
        FormInputText(
          title: 'Password',
          txtcontroller: controller.fieldMerchantName,
          textInputType: TextInputType.visiblePassword,
          txtLine: 1,
          txtEnable: true,
          txtReadonly: false,
          mandatory: true,
          validatorMsg: 'Password is required',
        ),
        FormInputText(
          title: 'Confirm Password',
          txtcontroller: controller.fieldMerchantName,
          textInputType: TextInputType.visiblePassword,
          txtLine: 1,
          txtEnable: true,
          txtReadonly: false,
          mandatory: true,
          validatorMsg: 'Password is required',
        ),
        FormInputText(
          title: 'Phone Number',
          txtcontroller: controller.fieldMerchantName,
          textInputType: TextInputType.phone,
          txtLine: 1,
          txtEnable: true,
          txtReadonly: false,
          mandatory: true,
          validatorMsg: 'Phone Number is required',
        ),
        FormInputText(
          title: 'Address',
          txtcontroller: controller.fieldMerchantName,
          textInputType: TextInputType.text,
          txtLine: 5,
          txtEnable: true,
          txtReadonly: false,
          mandatory: true,
          validatorMsg: 'Password is required',
        ),
        const ImageForm(),
        SizedBox(height: AppThemes().extraSpacing),
        const SubmitButton()
      ],
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

class SubmitButton extends StatelessWidget {
  const SubmitButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: Get.size.width,
      child: ElevatedButton(
        onPressed: () => DialogWidget().onConfirmPassword(),
        style: ElevatedButton.styleFrom(
          elevation: 3,
          backgroundColor: AppThemes.blue,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8.0)
          ),
        ),
        child: Text(
          'Submit',
          style: AppThemes().text4Bold(color: AppThemes.white),
        ),
      ),
    );
  }
}
