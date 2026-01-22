import 'package:get/get.dart';
import 'package:flutter/material.dart';

class MessageController extends GetxController {
  var messages = <String>[].obs; // قائمة الرسائل
  var textController = TextEditingController();
  final Color color = const Color.fromARGB(255, 255, 94, 7);

  void addMessage() {
    final msg = textController.text.trim();
    if (msg.isNotEmpty) {
      messages.add(msg);
      textController.clear();
    }
  }
}