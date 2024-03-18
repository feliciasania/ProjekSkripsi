import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:projek_skripsi/application/seller/all_voucher/controllers/all_voucher_controller.dart';
import 'package:projek_skripsi/application/seller/all_voucher/views/widgets/dialog_widget.dart';
import 'package:projek_skripsi/core/components/form_component.dart';
import 'package:projek_skripsi/core/const/app_themes.dart';

class CreateVoucherPage extends GetView<AllVoucherController> {
  const CreateVoucherPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppThemes.white,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: AppThemes.blue,
        title: Text('Create Voucher',
            style: AppThemes().text3Bold(color: AppThemes.white)),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(AppThemes().veryExtraSpacing),
          child: Column(
            children: [
              FormInputText(
                title: 'Voucher Name',
                txtcontroller: controller.fieldName,
                textInputType: TextInputType.text,
                txtLine: 1,
                txtEnable: true,
                txtReadonly: false,
                mandatory: true,
                validatorMsg: 'Voucher Name is required',
              ),
              FormInputText(
                title: 'Quantity',
                txtcontroller: controller.fieldName,
                textInputType: TextInputType.number,
                txtLine: 1,
                txtEnable: true,
                txtReadonly: false,
                mandatory: true,
                validatorMsg: 'Quantity is required',
              ),
              FormInputText(
                title: 'Exp Date',
                txtcontroller: controller.fieldName,
                textInputType: TextInputType.datetime,
                txtLine: 1,
                txtEnable: true,
                txtReadonly: false,
                mandatory: true,
                validatorMsg: 'Exp Date is required',
              ),
              FormInputText(
                title: 'Min. Transaction',
                txtcontroller: controller.fieldName,
                textInputType: TextInputType.number,
                txtLine: 1,
                txtEnable: true,
                txtReadonly: false,
                mandatory: true,
                validatorMsg: 'Min. Transaction is required',
              ),
              FormInputText(
                title: 'Price',
                txtcontroller: controller.fieldName,
                textInputType: TextInputType.number,
                txtLine: 1,
                txtEnable: true,
                txtReadonly: false,
                mandatory: true,
                validatorMsg: 'Price is required',
              ),
              FormInputText(
                title: 'Description',
                txtcontroller: controller.fieldName,
                textInputType: TextInputType.multiline,
                txtLine: 7,
                txtEnable: true,
                txtReadonly: false,
                mandatory: true,
                validatorMsg: 'Voucher Name is required',
              ),
              SizedBox(height: AppThemes().veryExtraSpacing),
              const SubmitButton()
            ],
          ),
        ),
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
        onPressed: () => DialogWidget().onConfirm(),
        style: ElevatedButton.styleFrom(
          elevation: 3,
          backgroundColor: AppThemes.blue,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8.0)
          ),
        ),
        child: Text(
          'Create Voucher',
          style: AppThemes().text4Bold(color: AppThemes.white),
        ),
      ),
    );
  }
}



