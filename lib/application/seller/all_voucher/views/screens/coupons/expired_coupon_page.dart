import 'package:flutter/material.dart';
import 'package:projek_skripsi/application/seller/all_voucher/views/widgets/card_widget.dart';
import 'package:projek_skripsi/core/const/app_themes.dart';

class ExpiredCouponPage extends StatelessWidget {
  const ExpiredCouponPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        physics: const BouncingScrollPhysics(),
        shrinkWrap: true,
        itemCount: 5,
        itemBuilder: (context, index) {
          return Column(
            children: [
              CouponCard(
                widget: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IntrinsicHeight(
                      child: Row(
                        children: [
                          RichText(
                            text: TextSpan(
                              text: "Qty: ",
                              style: AppThemes().text5(color: Colors.grey),
                              children: [
                                TextSpan(
                                  text: "5",
                                  style: AppThemes().text5Bold(color: AppThemes.black),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(width: AppThemes().extraSpacing),
                          RichText(
                            text: TextSpan(
                              text: "Sold: ",
                              style: AppThemes().text5(color: Colors.grey),
                              children: [
                                TextSpan(
                                  text: "5",
                                  style: AppThemes().text5Bold(color: AppThemes.black),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    ElevatedButton(
                      onPressed: () {},
                      child: Text('Reuse'),
                      style: ElevatedButton.styleFrom(
                          shape: StadiumBorder(),
                          backgroundColor: AppThemes.green
                      ),
                    ),
                  ],
                ),
              ),
              index == 4 ?
                SizedBox(height: AppThemes().defaultFormHeight) : SizedBox()
            ],
          );
        });
  }
}

