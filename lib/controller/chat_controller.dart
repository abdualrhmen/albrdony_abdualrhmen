import 'package:get/get.dart';
import 'package:flutter/material.dart';

class ChatController extends GetxController {
  var students = <String>["namil", "majed", "aboody", "yeassen"].obs;
  var nameController = TextEditingController();
  final Color color = const Color.fromARGB(255, 255, 94, 7);

  void addStudent() {
    final name = nameController.text.trim();
    if (name.isNotEmpty) {
      students.add(name);
      nameController.clear();
    }
  }
}