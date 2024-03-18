import 'package:flutter/material.dart';
import 'package:projek_skripsi/core/const/app_assets.dart';
import 'package:projek_skripsi/core/const/app_themes.dart';

class RegisterPageHeader extends StatelessWidget {
  const RegisterPageHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Align(
            alignment: Alignment.center,
            child: Image.asset(AppAssets.buyerregister)
        ),
        SizedBox(height: AppThemes().veryExtraSpacing),
        Text('Howdy,  Hunter!',
            style: AppThemes().text3Bold(color: AppThemes.lightBlue)),
        const Text(
          "Embark on your discovery journey to unlock exclusive promotions",
        )
      ],
    );
  }
}
