import 'package:get/get.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:projek_skripsi/utils/routes.dart';

class StoreSellerController extends GetxController {

  void logout() async {
    await FirebaseAuth.instance.signOut();
    Get.offAllNamed(AppRoutes.onBoarding);
  }
}