import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:projek_skripsi/utils/routes.dart';

class RegisterSellerController extends GetxController {
  var formkey = GlobalKey<FormState>();

  var fieldName = TextEditingController();
  var fieldEmail = TextEditingController();
  var fieldPassword = TextEditingController();
  var fieldConfirmPassword = TextEditingController();
  var fieldPhoneNumber = TextEditingController();
  var fieldAddress = TextEditingController();
  var fieldTag = TextEditingController();

  void register() async {
    try {
      await FirebaseAuth.instance.createUserWithEmailAndPassword(
          email: fieldEmail.text,
          password: fieldPassword.text
      );
      Get.offNamed(AppRoutes.sellerdashboard);
    } on FirebaseAuthException catch (e) {
      if (e.code == 'weak-password') {
        print('The password provided is too weak.');
      } else if (e.code == 'email-already-in-use') {
        print('The account already exists for that email.');
      }
    } catch (e) {
      print(e);
    }
  }

}