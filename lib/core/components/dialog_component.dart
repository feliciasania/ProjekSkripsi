import 'package:get/get.dart';
import 'package:lottie/lottie.dart';
import 'package:flutter/material.dart';

class DialogComponent {
  onShowLoading(){
    return Center(
        child: SizedBox(
          height: Get.size.height * 0.2,
          child: Lottie.asset(
              'assets/lottie/loading.json',
              repeat: true
          ),
        )
    );
  }

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