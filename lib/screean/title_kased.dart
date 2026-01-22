import 'package:flutter/material.dart';
import '../../controller/poem_controller.dart';
import 'package:get/get.dart';


class TitleKased extends StatelessWidget {
  final String title;
  final String author;

  TitleKased({required this.title, required this.author});

  final PoemController poemController = Get.put(PoemController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Obx(() => Text(
              poemController.isArabic.value
                  ? "$title ديوان"
                  : "$title Collection",
              style: TextStyle(color: Colors.white),
              textAlign: TextAlign.center,
            )),
        backgroundColor: const Color.fromARGB(255, 255, 94, 7),
        actions: [
          IconButton(
            icon: Icon(Icons.language),
            onPressed: () => poemController.toggleLanguage(),
          ),
          CircleAvatar(
            radius: 30,
            backgroundImage: AssetImage("images/albrdony.png"),
          ),
        ],
      ),
      body: Obx(() => ListView.builder(
            itemCount: poemController.poems.length,
            itemBuilder: (context, index) {
              final poem = poemController.poems[index];
              return Card(
                margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
                color: const Color.fromARGB(255, 255, 94, 7),
                child: ListTile(
                  leading: CircleAvatar(
                    backgroundImage: AssetImage(poem['image']!),
                  ),
                  title: Text(
                    poemController.isArabic.value
                        ? poem['title_ar']!
                        : poem['title_en']!,
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
                        fontStyle: FontStyle.normal),
                    textDirection: poemController.isArabic.value
                        ? TextDirection.rtl
                        : TextDirection.ltr,
                    textAlign: TextAlign.center,
                  ),
                  onTap: () {
                    Get.snackbar("قصيدة مختارة",
                        poemController.isArabic.value
                            ? poem['title_ar']!
                            : poem['title_en']!);
                  },
                ),
              );
            },
          )),
    );
  }
}