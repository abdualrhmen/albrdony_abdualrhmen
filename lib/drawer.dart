import 'package:flutter/material.dart';
import 'package:flutter_app4/app_work4.dart';


class mydrawer extends StatelessWidget {
  const mydrawer({super.key});
buildListTitle(context,txt,icon){
  return ListTile(title: Text(txt),
  tileColor: Colors.white,
  
  onTap: () {
    Navigator.of(context).push(MaterialPageRoute(builder: (context) =>AppWork4(),));
  },leading: Icon(icon),trailing: Icon(Icons.arrow_forward_ios,color: Colors.red,),
  );
}
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          DrawerHeader(decoration: BoxDecoration(color: Colors.red),
          child: Column(
            spacing: 11,
            children: [
              Expanded(flex: 2,child: CircleAvatar(
                backgroundImage: AssetImage("images/abdualrhmen.png"),
                radius: 50,
              ),
              
              ),
              Expanded(child: Text("القائمة ",style: TextStyle(
                color: Colors.white,
                fontSize: 23,
                fontWeight: FontWeight.bold
              ),))
            ],
          ),),
          buildListTitle(context,"الرئيسية",Icons.home),
          buildListTitle(context,"الفئات",Icons.category),
          buildListTitle(context,"العروض",Icons.local_offer),
          buildListTitle(context,"السلة",Icons.shopping_bag),
        //  buildListTitle(context,,),
         
         buildListTitle(context,"قائمة مفضلاتي",Icons.favorite),
          buildListTitle(context,"المتاجر",Icons.business),
          buildListTitle(context,"الالعلامات التجارية",Icons.store),
          buildListTitle(context,"خدمة العملاء",Icons.support_agent),
          buildListTitle(context,"سياسة الخصوصية",Icons.policy),
          buildListTitle(context,"حول ستروم",Icons.help),
          buildListTitle(context,"مشاركة التطبيق",Icons.share),


        ],
      ),
      width: MediaQuery.of(context).size.width/2,
    );
  }
}