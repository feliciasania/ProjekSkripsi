import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:projek_skripsi/application/seller/scan/controllers/scan_seller_controller.dart';
import 'package:projek_skripsi/application/seller/scan/views/widgets/components.dart';
import 'package:projek_skripsi/application/seller/scan/views/widgets/transaction_succesful.dart';
import 'package:projek_skripsi/core/components/form_component.dart';
import 'package:projek_skripsi/core/const/app_themes.dart';

class ScanPageBody extends GetView<ScanSellerController> {
  const ScanPageBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.all(AppThemes().veryExtraSpacing),
        child: Column(
          children: [
            Text('Customer Name', style: AppThemes().text4(color: AppThemes.blue)),
            SizedBox(height: AppThemes().defaultSpacing),
            Text('Albert Silva', style: AppThemes().text4Bold(color: AppThemes.black)),
            SizedBox(height: AppThemes().veryExtraSpacing),
            FormInputText(
              title: 'Total Purchase',
              txtcontroller: controller.fieldTotal,
              textInputType: TextInputType.number,
              txtLine: 1,
              txtEnable: true,
              txtReadonly: false,
              mandatory: true,
              validatorMsg: 'Total Purchase is required',
            ),
            SizedBox(height: AppThemes().veryExtraSpacing),
            SizedBox(
              width: Get.size.width,
              child: Row(
                children: [
                  SizedBox(
                    width: Get.size.width * .7,
                    child: FormInputText(
                      title: 'Voucher ID',
                      txtcontroller: controller.fieldTotal,
                      textInputType: TextInputType.text,
                      txtLine: 1,
                      txtEnable: true,
                      txtReadonly: false,
                      mandatory: true,
                      validatorMsg: 'Voucher ID is required',
                    ),
                  ),
                  SizedBox(width: AppThemes().defaultSpacing),
                  Expanded(
                    child: Container(
                      decoration: const BoxDecoration(
                        color: AppThemes.blue,
                        borderRadius: BorderRadius.only(
                          bottomRight: Radius.circular(8.0),
                          topRight: Radius.circular(8.0),
                        )
                      ),
                      child: IconButton(
                        onPressed: () => controller.scanBarcode(),
                        icon: const Icon(Icons.qr_code_scanner, color: Colors.white),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(width: AppThemes().extraSpacing),
            Container(
              width: Get.size.width,
              padding: EdgeInsets.all(AppThemes().extraSpacing),
              decoration: BoxDecoration(
                color: AppThemes.white,
                border: Border.all(color: AppThemes.blue),
                borderRadius: BorderRadius.circular(8.0)
              ),
              child: Column(
                children: [
                  DescText(title: 'Voucher Name', subtitle: 'Cashback 30% | Buy 2 Cups'),
                  SizedBox(height: AppThemes().extraSpacing),
                  DescText(title: 'Quantity', subtitle: '5'),
                  SizedBox(height: AppThemes().extraSpacing),
                  DescText(title: 'Exp Date', subtitle: '03 Maret 2024'),
                  SizedBox(height: AppThemes().extraSpacing),
                  DescText(title: 'Min Transaction', subtitle: 'Rp 42000'),
                  SizedBox(height: AppThemes().extraSpacing),
                  DescText(title: 'Description', subtitle: 'Cashback 30% | Buy 2 Cupsd  dsadsa'),
                ],
              )
            ),
            SizedBox(height: AppThemes().veryExtraSpacing),
            ConfirmButton()

          ],
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
      width: Get.size.width,
      child: ElevatedButton(
        onPressed: () => Get.to(const TransactionSuccessful()),
        style: ElevatedButton.styleFrom(
          elevation: 3,
          backgroundColor: AppThemes.blue,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8.0)
          ),
        ),
        child: Text(
          'Confirm Transaction',
          style: AppThemes().text4Bold(color: AppThemes.white),
        ),
      ),
    );
  }
}
