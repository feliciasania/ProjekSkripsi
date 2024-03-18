import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:projek_skripsi/core/const/app_themes.dart';

class FormInputText extends StatelessWidget {
  final String title;
  final int txtLine;
  final bool mandatory;
  final bool txtEnable;
  final bool txtReadonly;
  final TextInputType textInputType;
  final TextEditingController txtcontroller;
  final String? validatorMsg;
  final int? maxLength;

  const FormInputText({
    Key? key,
    required this.title,
    required this.txtcontroller,
    required this.textInputType,
    required this.txtLine,
    required this.txtEnable,
    required this.txtReadonly,
    required this.mandatory,
    this.validatorMsg,
    this.maxLength,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        // horizontal: 12.0,
        vertical: 10.0,
      ),
      child: Column(
        children: [
          // Padding(
          //   padding: EdgeInsets.symmetric(vertical: 4.0),
          //   child: Align(
          //       alignment: Alignment.topLeft,
          //       child: RichText(
          //         text: TextSpan(
          //           text: title,
          //           style: TextStyle(color: Colors.black),
          //           children: <TextSpan>[
          //             TextSpan(text: mandatory ? '*' : '',
          //                 style: TextStyle(color: Colors.red)),
          //           ],
          //         ),
          //       )),
          // ),
          SizedBox(
            width: Get.size.width,
            child: TextFormField(
              keyboardType: textInputType,
              controller: txtcontroller,
              maxLines: txtLine,
              maxLength: maxLength,
              enabled: txtEnable,
              readOnly: txtReadonly,
              validator: (value) {
                if (mandatory && (value == null || value.isEmpty)) {
                  return validatorMsg;
                } else {
                  return null;
                }
              },
              decoration: InputDecoration(
                hintText: title,
                hintStyle:
                TextStyle(fontSize: 14.0, color: Colors.grey.shade400),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8.0),
                ),
                contentPadding: const EdgeInsets.only(top: 12.0, left: 12.0),
                focusedBorder: OutlineInputBorder(
                  borderSide: const BorderSide(color: AppThemes.darkBlue, width: 2),
                  borderRadius: BorderRadius.circular(8.0),
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: const BorderSide(color: AppThemes.darkBlue, width: 1),
                  borderRadius: BorderRadius.circular(8.0),
                ),
              ),
              style: const TextStyle(fontSize: 14),
            ),
          ),
        ],
      ),
    );
  }
}