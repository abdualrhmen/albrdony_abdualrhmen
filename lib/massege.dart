import 'package:flutter/material.dart';
import 'package:flutter_app4/controller/massage_controller.dart';
import 'package:get/get.dart';
import 'drawer.dart';


class Massege extends StatelessWidget {
  Massege({Key? key}) : super(key: key);

  final MessageController messageController = Get.put(MessageController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("عبدالله البردوني"),
        backgroundColor: Colors.white60,
        centerTitle: true,
      ),
      drawer: const MyDrawer(),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              controller: messageController.textController,
              decoration: InputDecoration(
                labelText: "نص الرسالة",
                hintText: "إضافة رسالة",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(40),
                ),
              ),
            ),
          ),
          ElevatedButton(
            style: ButtonStyle(
              backgroundColor:
                  WidgetStatePropertyAll(messageController.color),
            ),
            onPressed: messageController.addMessage,
            child: const Text(
              "إضافة رسالة",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.bold),
            ),
          ),
          Expanded(
            child: Obx(() => ListView.builder(
                  itemCount: messageController.messages.length,
                  itemBuilder: (context, i) => Container(
                    alignment: Alignment.bottomLeft,
                    margin: const EdgeInsets.symmetric(
                        vertical: 5, horizontal: 10),
                    child: Text(
                      messageController.messages[i],
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        backgroundColor: messageController.color,
                      ),
                    ),
                  ),
                )),
          ),
        ],
      ),
    );
  }
}