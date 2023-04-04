import 'package:flutter/material.dart';
import 'package:flutter_application_1/res/getx_Localization/language.dart';
import 'package:flutter_application_1/res/routes/routes.dart';
import 'package:flutter_application_1/view/SplashcreenView.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      translations: Langugaes(),
      locale: const Locale('en','US'),
      fallbackLocale: const Locale('en','US'),
      home: const SplashScreen(),
      getPages: 
        AppRoutes.approutes(),
    );
  }
}

