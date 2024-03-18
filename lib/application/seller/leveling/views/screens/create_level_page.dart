import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:projek_skripsi/application/seller/leveling/controllers/create_level_controller.dart';
import 'package:projek_skripsi/application/seller/leveling/views/widgets/dialog_widget.dart';
import 'package:projek_skripsi/core/components/form_component.dart';
import 'package:projek_skripsi/core/const/app_themes.dart';

class CreateLevelPage extends StatelessWidget {
  const CreateLevelPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(CreateLevelController(Get.arguments));
    return Scaffold(
      backgroundColor: AppThemes.white,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: AppThemes.blue,
        title: Text(controller.title,
            style: AppThemes().text3Bold(color: AppThemes.white)),
      ),
      body: Padding(
        padding: EdgeInsets.all(AppThemes().veryExtraSpacing),
        child: Column(
          children: [
            FormInputText(
                title: 'Exp needed',
                txtcontroller: controller.fieldExp,
                textInputType: TextInputType.text,
                txtLine: 1,
                txtEnable: true,
                txtReadonly: false,
                mandatory: true),
            SizedBox(height: AppThemes().extraSpacing),
            DottedBorder(
                dashPattern: [5],
                color: AppThemes.darkBlue,
                child: Padding(
                  padding: EdgeInsets.all(AppThemes().extraSpacing),
                  child: Text('dsada'),
                ))
          ],
        ),
      ),
    );
  }
}
