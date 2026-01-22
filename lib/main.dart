import 'package:flutter/material.dart';
import 'package:flutter_app4/app_work4.dart';
import '../controller/languag_controlar.dart';
import 'package:flutter_app4/translition.dart';
import 'package:get/get.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final LanguageController langController = Get.put(LanguageController());

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      translations: AppTranslations(),
      locale: Locale('ar'), // اللغة الافتراضية
      fallbackLocale: Locale('en'),
      home: AppWork4(),
    );
  }
}