import 'package:flutter/material.dart';
import 'package:projek_skripsi/application/seller/all_voucher/views/widgets/card_widget.dart';
import 'package:projek_skripsi/core/const/app_themes.dart';

class PublicCouponPage extends StatelessWidget {
  const PublicCouponPage({Key? key}) : super(key: key);

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
                    const DescText(title: 'Qty', subtitle: '5'),
                    ElevatedButton(
                      onPressed: () {},
                      child: Text('Delete'),
                      style: ElevatedButton.styleFrom(
                          shape: StadiumBorder(),
                          backgroundColor: AppThemes.red
                      ),
                    )
                  ],
                ),
              ),
              index == 4 ?
                SizedBox(height: AppThemes().defaultFormHeight) : SizedBox()
            ]
          );
        });
  }
}
