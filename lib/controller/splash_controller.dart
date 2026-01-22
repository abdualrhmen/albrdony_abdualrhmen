import 'package:get/get.dart';
import 'package:flutter_app4/screean/login_screan.dart';

class SplashController extends GetxController {
  @override
  void onInit() {
    super.onInit();
    Future.delayed(const Duration(seconds: 2), () {
      Get.off(() => singin_screan());
    });
  }
}