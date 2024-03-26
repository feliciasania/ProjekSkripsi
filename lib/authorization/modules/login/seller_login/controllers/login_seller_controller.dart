import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:projek_skripsi/utils/routes.dart';

class LoginSellerController extends GetxController {
  var formkey = GlobalKey<FormState>();

  var fieldEmail = TextEditingController();
  var fieldPassword = TextEditingController();

  void login() async {
    try {
      await FirebaseAuth.instance.signInWithEmailAndPassword(
          email: fieldEmail.text,
          password: fieldPassword.text
      );
      Get.offNamed(AppRoutes.sellerdashboard);
    } on FirebaseAuthException catch (e) {
      if (e.code == 'user-not-found') {
        print('No user found for that email.');
      } else if (e.code == 'wrong-password') {
        print('Wrong password provided for that user.');
      }
    }
  }

}