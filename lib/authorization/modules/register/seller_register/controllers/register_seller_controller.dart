import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:projek_skripsi/utils/routes.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class RegisterSellerController extends GetxController {
  var formkey = GlobalKey<FormState>();

  var isHiddenPassword = true.obs;

  var fieldName = TextEditingController();
  var fieldEmail = TextEditingController();
  var fieldPassword = TextEditingController();
  var fieldConfirmPassword = TextEditingController();
  var fieldPhoneNumber = TextEditingController();
  var fieldAddress = TextEditingController();
  var fieldTag = TextEditingController();

  void register() async {
    if(formkey.currentState!.validate()){
      if(await authentication()) {
        saveToCloudFirestore();
        // verification email
      }
    }
  }

  Future<bool> authentication() async {
    try {
      await FirebaseAuth.instance.createUserWithEmailAndPassword(
          email: fieldEmail.text,
          password: fieldPassword.text
      );
      return true;
    } on FirebaseAuthException catch (e) {
      if (e.code == 'weak-password') {
        Get.defaultDialog(
            title: 'Warning',
            middleText: 'The password provided is to weak',
            textConfirm:'Ok',
            onConfirm: () => Get.back()
        );
      } else if (e.code == 'email-already-in-use') {
        Get.defaultDialog(
            title: 'Warning',
            middleText: 'The account already exists for that email.',
            textConfirm:'Ok',
            onConfirm: () => Get.back()
        );
      }
      return false;
    } catch (e) {
      print(e);
      return false;
    }
  }


  void saveToCloudFirestore(){
    CollectionReference stores = FirebaseFirestore.instance.collection('stores');

    stores.add({
      'name': fieldName.text,
      'email': fieldEmail.text,
      'phone_number': fieldPhoneNumber.text,
      'address': fieldAddress.text,
      'tag': fieldTag.text
    })
        .then((value) =>
          Get.defaultDialog(
              title: 'Success',
              middleText: 'User data has been successfully saved',
              textConfirm:'Ok',
              onConfirm: () => Get.until((route) =>
                Get.currentRoute == AppRoutes.sellerlogin)
          ))
        .catchError((error) =>
          Get.defaultDialog(
              title: 'Failed',
              middleText: 'User data failed to save',
              textConfirm:'Ok',
              onConfirm: () => Get.back()
          ));
  }


}