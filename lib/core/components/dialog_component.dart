import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DialogComponent {
  onShowModalBottomSheet(Widget widget){
    showModalBottomSheet(
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
            top: Radius.circular(8.0),
          ),
        ),
        isScrollControlled: true,
        context: Get.context!,
        builder: (BuildContext context) {
          return Padding(
            padding: EdgeInsets.only(
                bottom: MediaQuery.of(context).viewInsets.bottom),
            child: Wrap(
              children: [
                widget,
              ],
            ),
          );
        }
    );
  }
}