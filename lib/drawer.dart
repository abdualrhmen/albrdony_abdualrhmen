import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_app4/app_work4.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({Key? key}) : super(key: key);

  // دالة لبناء عنصر في القائمة
  Widget buildListTile(String txt, IconData icon, Widget page) {
    return ListTile(
      title: Text(txt),
      tileColor: Colors.white,
      leading: Icon(icon),
      trailing: const Icon(Icons.arrow_forward_ios, color: Colors.red),
      onTap: () {
        Get.to(() => page); // التنقل باستخدام GetX
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      width: MediaQuery.of(context).size.width / 2,
      child: ListView(
        children: [
          DrawerHeader(
            decoration: const BoxDecoration(color: Colors.red),
            child: Column(
              children: [
                const Expanded(
                  flex: 2,
                  child: CircleAvatar(
                    backgroundImage: AssetImage("images/abdualrhmen.png"),
                    radius: 50,
                  ),
                ),
                const Expanded(
                  child: Text(
                    "القائمة",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 23,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
          ),
          buildListTile("الرئيسية", Icons.home,  AppWork4()),
          buildListTile("الفئات", Icons.category,  AppWork4()),
          buildListTile("العروض", Icons.local_offer,  AppWork4()),
          buildListTile("السلة", Icons.shopping_bag,   AppWork4()),
          buildListTile("قائمة مفضلاتي", Icons.favorite,   AppWork4()),
          buildListTile("المتاجر", Icons.business,   AppWork4()),
          buildListTile("العلامات التجارية", Icons.store,   AppWork4()),
          buildListTile("خدمة العملاء", Icons.support_agent,   AppWork4()),
          buildListTile("سياسة الخصوصية", Icons.policy,   AppWork4()),
          buildListTile("حول ستروم", Icons.help,   AppWork4()),
          buildListTile("مشاركة التطبيق", Icons.share,   AppWork4()),
        ],
      ),
      
    );
  }
}