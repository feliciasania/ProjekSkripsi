import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:projek_skripsi/core/const/app_themes.dart';

class DialogWidget {
  onChooseReward(){
    return Get.dialog(
        AlertDialog(
            shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(8.0))),
            contentPadding: EdgeInsets.only(top: AppThemes().defaultSpacing),
            title: Text('Select One of Two Reward',
                style: AppThemes().text3Bold(color: AppThemes.black)),
            content: Container(
              padding: EdgeInsets.all(AppThemes().veryExtraSpacing),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Row(
                    children: [
                      Expanded(
                        child: Container(
                          padding: EdgeInsets.all(AppThemes().biggerSpacing),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8.0),
                            border: Border.all(color: AppThemes.darkBlue)
                          ),
                          child: Center(
                            child: Column(
                              children: [
                                Icon(Icons.currency_bitcoin),
                                SizedBox(height: AppThemes().extraSpacing),
                                Text('Coin', style: AppThemes().text5Bold(color: AppThemes.blue))
                              ],
                            ),
                          ),
                        ),
                      ),
                      SizedBox(width: AppThemes().extraSpacing),
                      Expanded(
                          child: Container(
                          padding: EdgeInsets.all(AppThemes().biggerSpacing),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8.0),
                              border: Border.all(color: AppThemes.darkBlue)),
                          child: Center(
                            child: Column(
                              children: [
                                Icon(Icons.discount),
                                SizedBox(height: AppThemes().extraSpacing),
                                Text('Voucher',
                                    style: AppThemes()
                                        .text5Bold(color: AppThemes.blue))
                              ],
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                  SizedBox(height: AppThemes().extraSpacing),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      TextButton(
                        onPressed: () => Get.back(),
                        child: Text("Cancel",
                          style: AppThemes().text5Bold(color: AppThemes.blue),),
                      ),
                      SizedBox(width: AppThemes().extraSpacing),
                      ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                            backgroundColor: AppThemes.blue
                        ),
                        child: const Text("Confirm"),
                      ),
                    ],
                  )
                ],
              ),
            )
        ),
        barrierDismissible: false
    );
  }

}