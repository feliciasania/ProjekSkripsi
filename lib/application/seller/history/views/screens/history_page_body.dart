import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:projek_skripsi/application/seller/history/controllers/history_seller_controller.dart';
import 'package:projek_skripsi/application/seller/history/views/widgets/card_widget.dart';
import 'package:projek_skripsi/core/const/app_themes.dart';

class HistoryPageBody extends GetView<HistorySellerController> {
  const HistoryPageBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      itemCount: 5,
      itemBuilder: (context, index){
        return Padding(
          padding: EdgeInsets.symmetric(horizontal: AppThemes().veryExtraSpacing),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: AppThemes().veryExtraSpacing),
              Text('12/12/2023', style: AppThemes().text6Bold(color: AppThemes.blue)),
              HistoryCard()
            ],
          ),
        );
      },
    );
  }
}
