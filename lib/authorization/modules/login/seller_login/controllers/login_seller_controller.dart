import 'dart:developer';

import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:projek_skripsi/utils/routes.dart';

class LoginSellerController extends GetxController {
  var formkey = GlobalKey<FormState>();

  var isHiddenPassword = true.obs;

  var fieldEmail = TextEditingController();
  var fieldPassword = TextEditingController();

  void login() async {
    if(formkey.currentState!.validate()){
      try {
        await FirebaseAuth.instance.signInWithEmailAndPassword(
            email: fieldEmail.text,
            password: fieldPassword.text
        );
        Get.offNamed(AppRoutes.sellerdashboard);
      } on FirebaseAuthException catch (e) {
        log(e.code);
        if (e.code == 'user-not-found') {
          print('No user found for that email.');
        } else if (e.code == 'wrong-password') {
          print('Wrong password provided for that user.');
        }
      }
    }

  }

}