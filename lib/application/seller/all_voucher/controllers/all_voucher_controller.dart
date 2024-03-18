import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AllVoucherController extends GetxController with GetSingleTickerProviderStateMixin{
  TabController? tabsController;

  var fieldName = TextEditingController();

  final List<Tab> tabs = const [
    Tab(child: Text('Public Coupon', textAlign: TextAlign.center)),
    Tab(child: Text('Special Coupon', textAlign: TextAlign.center)),
    Tab(child: Text('Expired Coupon', textAlign: TextAlign.center)),
  ];

  @override
  void onInit() {
    tabsController = TabController(length: tabs.length, vsync: this);
    super.onInit();
  }
}