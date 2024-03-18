import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:projek_skripsi/application/seller/dashboard/views/screens/dashboard_page.dart';
import 'package:projek_skripsi/application/seller/dashboard/controllers/dashboard_seller_controller.dart';
import 'package:projek_skripsi/core/const/app_themes.dart';
import 'package:projek_skripsi/utils/routes.dart';

class SellerDashboardNavigation extends StatelessWidget {
  const SellerDashboardNavigation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var controller = Get.put(DashboardSellerController());
    return Scaffold(
      backgroundColor: AppThemes.white,
      body: Obx(() => controller.tabsPage[controller.currentIndex.value]),
      floatingActionButton: FloatingActionButton(
        onPressed: () => Get.toNamed(AppRoutes.sellerscan),
        shape: const StadiumBorder(),
        backgroundColor: AppThemes.blue,
        child: const Icon(Icons.qr_code_scanner),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: Obx(() =>
          BottomAppBar(
            padding: EdgeInsets.zero,
            shadowColor: Colors.black,
            shape: const CircularNotchedRectangle(),
            notchMargin: 4,
            clipBehavior: Clip.antiAlias,
            child: BottomNavigationBar(
              type: BottomNavigationBarType.fixed,
              currentIndex: controller.currentIndex.value,
              onTap: controller.onItemTapped,
              backgroundColor: AppThemes.white,
              selectedItemColor: AppThemes.blue,
              selectedFontSize: 14,
              unselectedFontSize: 14,
              items: const [
                BottomNavigationBarItem(
                    icon: Icon(Icons.home),
                    label: 'Home'
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.qr_code_scanner,
                      color: Colors.transparent),
                  label: 'Scan',
                ),
                BottomNavigationBarItem(
                    icon: Icon(Icons.store),
                    label: 'Store'
                )
              ],
            ),
          )),
    );
  }
}
