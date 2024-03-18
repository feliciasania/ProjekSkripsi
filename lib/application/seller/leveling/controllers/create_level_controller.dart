import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CreateLevelController extends GetxController {
  CreateLevelController(this.arguments);
  Map arguments;

  late final String title;

  var fieldExp = TextEditingController();

  @override
  void onInit() {
    title = arguments['title'];
    super.onInit();
  }
}