import 'package:get/get.dart';
import 'package:flutter/material.dart';

class PageControllerX extends GetxController {
  var currentIndex = 0.obs; // لإدارة BottomNavigationBar
  var isArabic = true.obs;  // لإدارة اللغة

  void changePage(int index) {
    currentIndex.value = index;
  }

  void toggleLanguage() {
    isArabic.value = !isArabic.value;
    if (isArabic.value) {
      Get.updateLocale(Locale('ar'));
    } else {
      Get.updateLocale(Locale('en'));
    }
  }
}