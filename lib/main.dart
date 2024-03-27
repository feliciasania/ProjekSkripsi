import 'dart:developer';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:projek_skripsi/authorization/modules/login/controllers/auth_controller.dart';
import 'package:projek_skripsi/core/components/dialog_component.dart';
import 'package:projek_skripsi/utils/pages.dart';
import 'package:projek_skripsi/utils/routes.dart';
import 'package:firebase_core/firebase_core.dart';

import 'package:projek_skripsi/core/const/app_themes.dart';
import 'package:projek_skripsi/utils/lang/localization.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp])
      .then((_) {
    runApp(MyApp());
  });
}

class MyApp extends StatelessWidget {
  MyApp({super.key});
  final authController = Get.put(AuthController(), permanent: true);
  @override
  Widget build(BuildContext context) {
    return StreamBuilder<User?>(
      stream: authController.streamAuthStatus,
      builder: (context, snapshot) {
        if(snapshot.connectionState == ConnectionState.active){
          log(snapshot.data.toString());
          return GetMaterialApp(
            debugShowCheckedModeBanner: false,
            title: 'Flutter Demo',
            theme: ThemeData(
              primaryColor: AppThemes.blue,
              appBarTheme: const AppBarTheme(color: AppThemes.blue),
              backgroundColor: AppThemes.white,
            ),

            initialRoute: snapshot.data != null && snapshot.data!.emailVerified ?
              AppRoutes.sellerdashboard : AppRoutes.onBoarding,
            getPages: AppPages.pages,

            translations: Localization(),
            // get depends device -> locale: Get.deviceLocale,
            locale: const Locale('id','ID'),
            fallbackLocale: const Locale('en','US'),
            // fallbackLocale : use if the selected locale is not supported.
          );
        }
        return MaterialApp(
          home: Scaffold(
            body: SizedBox(
              height: Get.size.height,
              child: DialogComponent().onShowLoading(),
            ),
          ),
        );
      }
    );
  }
}
