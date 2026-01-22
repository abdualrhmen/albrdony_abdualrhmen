

import 'package:flutter/material.dart';
import 'package:flutter_app4/chat.dart';
import 'package:flutter_app4/screean/splash.dart';
import 'package:flutter_app4/screean/title_kased.dart';


import '../controller/languag_controlar.dart';
import '../controller/page_controllor.dart';
import 'package:get/get.dart';


class AppWork4 extends StatelessWidget {
  final LanguageController langController = Get.find();
final PageControllerX pageController = Get.put(PageControllerX());

  final List<Map<String, String>> books = [
    {
    'title_ar': 'في طريق الفجر',
    'title_en': 'On the Path of Dawn',
    'author': 'عبد الله البردوني',
    'image': 'images/في طريق الفجر.png',
  },
  {
    'title_ar': 'من أرض بلقيس',
    'title_en': 'From the Land of Bilqis',
    'author': 'عبد الله البردوني',
    'image': 'images/من ارض بلقيس.png',
  },
  {
    'title_ar': 'مدينة الغد',
    'title_en': 'City of Tomorrow',
    'author': 'عبد الله البردوني',
    'image': 'images/مدينة الغد.webp',
  },
  {
    'title_ar': 'لعيني أم بلقيس',
    'title_en': 'For the Eyes of Bilqis’ Mother',
    'author': 'عبد الله البردوني',
    'image': 'images/لعيني ام بلقيس.jpg',
  },
  {
    'title_ar': 'السفر إلى الأيام الخضر',
    'title_en': 'Journey to the Green Days',
    'author': 'عبد الله البردوني',
    'image': 'images/السفر الى الايام الخضر.jpg',
  },
  {
    'title_ar': 'وجوه دخانية في مرايا الليل',
    'title_en': 'Smoky Faces in the Mirrors of Night',
    'author': 'عبد الله البردوني',
    'image': 'images/albrdony.png',
  },
  {
    'title_ar': 'زمان بلا نوعية',
    'title_en': 'A Time Without Quality',
    'author': 'عبد الله البردوني',
    'image': 'images/زمان بلا نوعية.jpg',
  },
  {
    'title_ar': 'ترجمة رملية لأعراس الغبار',
    'title_en': 'Sandy Translation of Dusty Weddings',
    'author': 'عبد الله البردوني',
    'image': 'images/ترجمة رملية لاعراس الغبار.webp',
  },
  {
    'title_ar': 'كائنات الشوق الآخر',
    'title_en': 'Creatures of the Other Longing',
    'author': 'عبد الله البردوني',
    'image': 'images/كائنات الشوق الاخر.png',
  },
  {
    'title_ar': 'رجعة الحكيم بن زايد',
    'title_en': 'The Return of Hakim Ibn Zaid',
    'author': 'عبد الله البردوني',
    'image': 'images/رجعت الحكيم علي.png',
  },
  {
    'title_ar': 'جواب العصور',
    'title_en': 'Answer of the Ages',
    'author': 'عبد الله البردوني',
    'image': 'images/جواب العصور.png',
  },
  {
    'title_ar': 'رواغ المصابيح',
    'title_en': 'The Dodging Lamps',
    'author': 'عبد الله البردوني',
    'image': 'images/رواغ المصابيح.png',
  },

  
  ]; 
   @override
    Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
    title: Text('app_title'.tr),
        backgroundColor: const Color.fromARGB(255, 255, 94, 7),
        
        actions: [
          CircleAvatar(
            radius: 25,
            backgroundImage: AssetImage("images/albrdony.png"),
          ),
          IconButton(
            icon: Icon(Icons.language),
            onPressed: () =>  pageController.toggleLanguage(),
          ),
          
        ],
      ),
     drawer: Drawer(
  child: ListView(
    children: [
      DrawerHeader(
        decoration: const BoxDecoration(color: Colors.orange),
        child: Column(
          children: const [
            CircleAvatar(
              radius: 30,
              backgroundImage: AssetImage("images/abdualrhmen.png"),
            ),
            SizedBox(height: 10),
            Text("عبدالرحمن الحميدي",
                style: TextStyle(color: Colors.white, fontSize: 20)),
            Text("alhomydybdu997@gmail.com",
                style: TextStyle(color: Colors.white70)),
          ],
        ),
      ),
      ListTile(
        leading: const Icon(Icons.chat),
        title: Text('chat'.tr),
        onTap: () => Get.to(() => Chat()),
         trailing: const Icon(Icons.arrow_forward_ios, color: Colors.red),
      ),
      ListTile(
        leading: const Icon(Icons.person),
        title: Text('login'.tr),
        onTap: () => Get.to(() => Splash()),
         trailing: const Icon(Icons.arrow_forward_ios, color: Colors.red),
      ),
      ListTile(
        leading: const Icon(Icons.home),
        title: Text('home'.tr),
        onTap: () => pageController.changePage(0),
         trailing: const Icon(Icons.arrow_forward_ios, color: Colors.red),
      ),
      const Divider(),

      // قسم حول التطبيق
      ListTile(
        leading: const Icon(Icons.info),
        title: Text('about'.tr),
        onTap: () => Get.snackbar("Info", "حول التطبيق"),
         trailing: const Icon(Icons.arrow_forward_ios, color: Colors.red),
      ),
      ListTile(
        leading: const Icon(Icons.privacy_tip),
        title: Text('privacy'.tr),
        onTap: () => Get.snackbar("Info", "سياسة الخصوصية"), 
        trailing: const Icon(Icons.arrow_forward_ios, color: Colors.red),
      ),
      const Divider(),

      // قسم مواقع التواصل
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Text('social'.tr,
            style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
      ),
      ListTile(
        leading: const Icon(Icons.facebook),
        title: Text('facebook'.tr),
        onTap: () {},
         trailing: const Icon(Icons.arrow_forward_ios, color: Colors.red),
      ),
      ListTile(
        leading: const Icon(Icons.camera_alt),
        title: Text('instagram'.tr),
        onTap: () {},
         trailing: const Icon(Icons.arrow_forward_ios, color: Colors.red),
      ),
      ListTile(
        leading: const Icon(Icons.work),
        title: Text('linkedin'.tr),
        onTap: () {}, trailing: const Icon(Icons.arrow_forward_ios, color: Colors.red),
      ),
      ListTile(
        leading: const Icon(Icons.send),
        title: Text('telegram'.tr),
        onTap: () {},
         trailing: const Icon(Icons.arrow_forward_ios, color: Colors.red),
      ),
      ListTile(
        leading: const Icon(Icons.chat),
        title: Text('twitter'.tr),
        onTap: () {},
         trailing: const Icon(Icons.arrow_forward_ios, color: Colors.red),
      ),
      const Divider(),

      // قسم المراسلات والاتصال
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Text('contact'.tr,
            style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
      ),
      ListTile(
        leading: const Icon(Icons.whatshot),
        title: Text('whatsapp'.tr),
        onTap: () {},
         trailing: const Icon(Icons.arrow_forward_ios, color: Colors.red),
      ),
      ListTile(
        leading: const Icon(Icons.phone),
        title: Text('phone'.tr),
        onTap: () {},
         trailing: const Icon(Icons.arrow_forward_ios, color: Colors.red),
      ),
      ListTile(
        leading: const Icon(Icons.message),
        title: Text('sms'.tr),
        onTap: () {},
         trailing: const Icon(Icons.arrow_forward_ios, color: Colors.red),
      ),
      ListTile(
        leading: const Icon(Icons.facebook),
        title: Text('messenger'.tr),
        onTap: () {},
         trailing: const Icon(Icons.arrow_forward_ios, color: Colors.red),
        
      ),
      const Divider(),

      // قسم التفاعل والمشاركة
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Text('interaction'.tr,
            style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
      ),
      ListTile(
        leading: const Icon(Icons.share),
        title: Text('share_app'.tr),
        onTap: () {},
      ),
      const Divider(),
    ],
  ),
),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: GridView.builder(
          itemCount: books.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            childAspectRatio: 0.7,
            crossAxisSpacing: 12,
            mainAxisSpacing: 12,
          ),
          itemBuilder: (context, index) {
            final book = books[index];
            return GestureDetector(
              onTap: () {
                Get.to(() =>TitleKased(
                      title:  pageController.isArabic.value
                          ? book['title_ar']!
                          : book['title_en']!,
                      author: book['author']!,
                    ));
              },
              child: Column(
                children: [
                  Expanded(
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(12),
                      child: Image.asset(book['image']!, fit: BoxFit.cover),
                    ),
                  ),
                  SizedBox(height: 8),
                  Obx(() => Text(
                         pageController.isArabic.value? book['title_ar']!: book['title_en']!,
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.bold),
                        textAlign: TextAlign.center,
                      )),
                  Text(book['author']!,
                      style: TextStyle(fontSize: 14, color: Colors.grey[700]),
                      textAlign: TextAlign.center),
                ],
              ),
            );
          },
        ),
      ),
      bottomNavigationBar: Obx(() => BottomNavigationBar(
            currentIndex:  pageController.currentIndex.value,
            onTap: (index) =>  pageController.changePage(index),
            backgroundColor: const Color.fromARGB(255, 255, 94, 7),
            items: [
              BottomNavigationBarItem(
                  icon: Icon(Icons.home), label: 'home'.tr),
              BottomNavigationBarItem(
                  icon: Icon(Icons.share), label: 'share'.tr),
              BottomNavigationBarItem(
                  icon: Icon(Icons.exit_to_app), label: 'exit'.tr),
            ],
          )),
    );
  }

}