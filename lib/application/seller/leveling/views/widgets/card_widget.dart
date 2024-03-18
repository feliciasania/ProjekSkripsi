import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:projek_skripsi/core/const/app_themes.dart';

class LevelingCard extends StatelessWidget {
  final String title;
  final Color color;
  const LevelingCard({Key? key, required this.title,
    required this.color}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: Get.size.width * .8,
      padding: EdgeInsets.symmetric(
          vertical: AppThemes().extraSpacing,
          horizontal: AppThemes().defaultSpacing,
      ),
      margin: EdgeInsets.only(
        bottom: AppThemes().extraSpacing
      ),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(8.0),
        boxShadow: [BoxShadow(color: Colors.grey.shade500, blurRadius: 3.0, offset: Offset(0,2))],
      ),
      child: Row(
        children: [
          Expanded(child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(title, style: AppThemes().text5Bold(color: AppThemes.white)),
              SizedBox(height: AppThemes().extraSpacing),
              Text('Exp needed: 100 EXP', style: AppThemes().text5(color: AppThemes.white)),
              SizedBox(height: AppThemes().extraSpacing),
              Text('Reward: 100 Coins', style: AppThemes().text5(color: AppThemes.white)),
            ],
          )),
          IconButton(
              onPressed: (){},
              icon: Icon(Icons.arrow_forward_ios, color: AppThemes.white)
          )
        ],
      ),

    );
  }
}
