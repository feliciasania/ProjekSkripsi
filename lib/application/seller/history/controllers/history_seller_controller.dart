import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HistorySellerController extends GetxController with GetSingleTickerProviderStateMixin{
  TabController? tabsController;

  final List<Tab> tabs = const [
    Tab(child: Text('See All', textAlign: TextAlign.center, style: TextStyle(fontSize: 12),)),
    Tab(child: Text('Transaction Without Coupon', textAlign: TextAlign.center, style: TextStyle(fontSize: 12))),
    Tab(child: Text('Transaction With Coupon', textAlign: TextAlign.center, style: TextStyle(fontSize: 12))),
  ];

  @override
  void onInit() {
    tabsController = TabController(length: tabs.length, vsync: this);
    super.onInit();
  }
}