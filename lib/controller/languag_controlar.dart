import 'package:get/get.dart';
import 'package:flutter/material.dart';

class LanguageController extends GetxController {
  var isArabic = true.obs;

  void toggleLanguage() {
    if (isArabic.value) {
      Get.updateLocale(Locale('en'));
    } else {
      Get.updateLocale(Locale('ar'));
    }
    isArabic.value = !isArabic.value;
  }
}