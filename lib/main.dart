import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:projek_skripsi/core/const/app_themes.dart';
import 'package:projek_skripsi/utils/lang/localization.dart';
import 'package:projek_skripsi/utils/pages.dart';
import 'package:projek_skripsi/utils/routes.dart';

void main() {
  // SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp])
  //     .then((_) {
  //   runApp(const MyApp());
  // });
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primaryColor: AppThemes.blue,
        appBarTheme: AppBarTheme(color: AppThemes.blue),
        backgroundColor: AppThemes.white,
      ),

      initialRoute: AppRoutes.onBoarding,
      getPages: AppPages.pages,

      translations: Localization(),
      // get depends device -> locale: Get.deviceLocale,
      locale: const Locale('id','ID'),
      fallbackLocale: const Locale('en','US'),
      // fallbackLocale : use if the selected locale is not supported.
    );
  }
}
