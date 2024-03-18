import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:projek_skripsi/core/const/app_themes.dart';

class CouponCard extends StatelessWidget {
  const CouponCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: Get.size.width,
      margin: EdgeInsets.only(
        left: AppThemes().veryExtraSpacing,
        right: AppThemes().veryExtraSpacing,
        bottom: AppThemes().extraSpacing
      ),
      padding: EdgeInsets.all(AppThemes().extraSpacing),
      decoration: BoxDecoration(
        color: AppThemes.white,
        borderRadius: BorderRadius.circular(8.0),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.shade500, 
            blurRadius: 3.0,
            offset: const Offset(0,1))]
      ),
      child: Row(
        children: [
          Column(
            children: [
              Icon(Icons.discount, size: 40, color: AppThemes.blue),
              SizedBox(height: AppThemes().minSpacing),
              Text('x5', style: AppThemes().text6Bold(color: Colors.black),)
            ],
          ),
          SizedBox(width: AppThemes().extraSpacing),
          Expanded(
            child: Column(
              children: [
                Text('Cashback 30% | Buy 2 Cups Get 1 Free',
                  style: AppThemes().text5Bold(color: Colors.black),
                  maxLines: 2, overflow: TextOverflow.ellipsis),
                SizedBox(height: AppThemes().biggerSpacing),
                const IntrinsicHeight(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      DescText(title: 'Coin', subtitle: '1000'),
                      VerticalDivider(
                        color: Colors.black,
                        thickness: 1,
                      ),
                      DescText(title: 'Exp date', subtitle: '07 Feb 2024'),
                      // SizedBox(width: AppThemes().biggerSpacing),
                      VerticalDivider(
                        color: Colors.black,
                        thickness: 1,
                      ),
                      DescText(title: 'Min. Transaction', subtitle: 'Rp 42000'),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class DescText extends StatelessWidget {
  final String title;
  final String subtitle;
  const DescText({Key? key, required this.title, required this.subtitle})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(title, style: AppThemes().text6(color: Colors.grey)),
        Text(subtitle, style: AppThemes().text6Bold(color: Colors.black)),
      ],
    );
  }
}

