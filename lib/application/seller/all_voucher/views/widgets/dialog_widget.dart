import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:projek_skripsi/application/seller/all_voucher/views/widgets/success_create_voucher.dart';
import 'package:projek_skripsi/core/components/dialog_component.dart';
import 'package:projek_skripsi/core/const/app_themes.dart';

class DialogWidget {
  onConfirm() {
    // var attController = Get.find<AttachmentACController>();
    return DialogComponent().onShowModalBottomSheet(
      Padding(
        padding: EdgeInsets.only(
            top: AppThemes().defaultSpacing,
            left: AppThemes().veryExtraSpacing,
            right: AppThemes().veryExtraSpacing,
        ),
        child: Center(
          child: Column(
            children: [
              TopModalBottom(),
              SizedBox(height: AppThemes().veryExtraSpacing),
              Text(
                'Double check your voucher',
                style: AppThemes().text3Bold(color: AppThemes.black),
              ),
              SizedBox(height: AppThemes().extraSpacing),
              Text(
                'Remember to double check your Voucher creatation order '
                    'to ensure it accurately reflects your preference before '
                    'finalizing it',
                style: AppThemes().text4(color: AppThemes.black),
                textAlign: TextAlign.justify,
              ),
              SizedBox(height: AppThemes().veryExtraSpacing),
              const EditButton(),
              SizedBox(height: AppThemes().defaultSpacing),
              const ConfirmButton(),
              SizedBox(height: AppThemes().veryExtraSpacing)
            ],
          ),
        ),
      ),
    );
  }
}

class TopModalBottom extends StatelessWidget {
  const TopModalBottom({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 80,
      height: 10,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.grey.shade400
      ),
    );
  }
}

class EditButton extends StatelessWidget {
  const EditButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: Get.size.width * .5,
      child: ElevatedButton(
        onPressed: () => Get.back(),
        style: ElevatedButton.styleFrom(
          elevation: 3,
          backgroundColor: AppThemes.blue,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8.0)
          ),
        ),
        child: Text(
          'Edit Voucher',
          style: AppThemes().text4Bold(color: AppThemes.white),
        ),
      ),
    );
  }
}

class ConfirmButton extends StatelessWidget {
  const ConfirmButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: Get.size.width * .5,
      child: ElevatedButton(
        onPressed: () => Get.to(const SuccessCreateVoucher()),
        style: ElevatedButton.styleFrom(
          elevation: 3,
          backgroundColor: AppThemes.white,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8.0)
          ),
        ),
        child: Text(
          'Confirm',
          style: AppThemes().text4Bold(color: AppThemes.blue),
        ),
      ),
    );
  }
}


