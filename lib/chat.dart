// import 'package:flutter/material.dart';
import 'package:flutter_app4/drawer.dart';
import 'package:flutter_app4/massege.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app4/controller/chat_controller.dart';
import 'package:get/get.dart';

import 'drawer.dart';
import 'massege.dart';

class Chat extends StatelessWidget {
  Chat({Key? key}) : super(key: key);

  final ChatController chatController = Get.put(ChatController());

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
              controller: chatController.nameController,
              decoration: InputDecoration(
                labelText: "Name",
                hintText: "input your name",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(40),
                ),
              ),
            ),
          ),
          ElevatedButton(
            style: ButtonStyle(
              backgroundColor:
                  WidgetStatePropertyAll(chatController.color),
            ),
            onPressed: chatController.addStudent,
            child: const Text(
              "add student",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.bold),
            ),
          ),
          Expanded(
            child: Obx(() => ListView.builder(
                  itemCount: chatController.students.length,
                  itemBuilder: (context, i) => Card(
                    color: chatController.color,
                    child: ListTile(
                      title: Text(
                        chatController.students[i],
                        textAlign: TextAlign.center,
                        style: const TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                      ),
                      onTap: () => Get.to(() => Massege()),
                    ),
                  ),
                )),
          ),
        ],
      ),
    );
  }
}
