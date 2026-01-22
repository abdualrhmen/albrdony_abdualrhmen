import 'package:flutter/material.dart';
import 'package:flutter_app4/controller/splash_controller.dart';
import 'package:get/get.dart';


class Splash extends StatelessWidget {
  Splash({Key? key}) : super(key: key) {
    Get.put(SplashController()); // ربط الـ Controller عند إنشاء الصفحة
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Splash screen"),
      ),
      body: const Center(
        child: Text(
          "Welcome to Splash screen",
          style: TextStyle(
            color: Color.fromARGB(255, 0, 164, 68),
            fontWeight: FontWeight.bold,
            fontSize: 20,
          ),
        ),
      ),
    );
  }
}
