import 'dart:developer';

import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:projek_skripsi/utils/routes.dart';

class LoginSellerController extends GetxController {
  var formkey = GlobalKey<FormState>();

  var isHiddenPassword = true.obs;
  var errorMsg = ''.obs;

  var fieldEmail = TextEditingController();
  var fieldPassword = TextEditingController();

  void login() async {
    if(formkey.currentState!.validate()){
      try {
        UserCredential userCredential = await FirebaseAuth.instance
            .signInWithEmailAndPassword(
              email: fieldEmail.text,
              password: fieldPassword.text
        );
        if(userCredential.user!.emailVerified){
          Get.offNamed(AppRoutes.sellerdashboard);
        } else {
          Get.defaultDialog(
              title: 'Warning',
              middleText: 'User need verification email',
              textConfirm:'Ok',
              onConfirm: () async {
                await userCredential.user!.sendEmailVerification();
                Get.back();
              },
              textCancel: 'Cancel',
          );
          errorMsg.value = 'User need verification email';
        }
      } on FirebaseAuthException catch (e) {
        log(e.code);
        if (e.code == 'user-not-found') {
          errorMsg.value = 'No user found for that email';
        } else if (e.code == 'wrong-password') {
          errorMsg.value = 'Wrong password provided for that user';
        } else {
          errorMsg.value = 'Wrong email / password';
        }
      }
    }
  }

}