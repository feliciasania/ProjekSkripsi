import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:projek_skripsi/core/const/app_themes.dart';

class DashboardPageHeader extends StatelessWidget {
  const DashboardPageHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          height: AppThemes().defaultFormHeight,
          width: Get.size.width * .75,
          decoration: const BoxDecoration(
            color: AppThemes.blue,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(10.0),
              bottomLeft: Radius.circular(10.0),
            )
          ),
          child: Center(
            child: Text('Richeese Factory',
              style: AppThemes().text2Bold(color: AppThemes.white)
            ),
          ),
        ),
        SizedBox(width: Get.size.width * .02),
        Container(
          height: AppThemes().defaultFormHeight,
          width: Get.size.width * .13,
          decoration: const BoxDecoration(
              color: AppThemes.blue,
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(10.0),
                bottomRight: Radius.circular(10.0),
              )
          ),
          child: const Icon(Icons.edit, size: 24, color: AppThemes.white,)
        )
      ],
    );
  }
}
