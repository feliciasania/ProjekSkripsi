import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:projek_skripsi/application/seller/dashboard/views/screens/dashboard_page.dart';
import 'package:projek_skripsi/application/seller/store/views/screens/store_page.dart';
import 'package:projek_skripsi/core/const/app_themes.dart';

class DashboardSellerController extends GetxController with GetSingleTickerProviderStateMixin{
  var currentIndex = 0.obs;
  TabController? tabsController;

  final tabsPage = const [
    SellerDashboardPage(),
    SellerDashboardPage(),
    StorePage(),
  ];

  final List<Tab> tabs = const [
    Tab(text: 'Public Coupon'),
    Tab(text: 'Special Coupon'),
  ];

  final List<Color> levelColors = [
    AppThemes.level1,
    AppThemes.level2,
    AppThemes.level3,
    AppThemes.level4,
    AppThemes.level5,
  ];

  @override
  void onInit() {
    tabsController = TabController(length: tabs.length, vsync: this);
    super.onInit();
  }

  void onItemTapped(int index){
    currentIndex.value = index;
  }
}