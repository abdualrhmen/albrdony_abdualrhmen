
import 'package:flutter/material.dart';

class title_kased extends StatelessWidget {
final String title;
  final String author;
    title_kased({required this.title, required this.author});

  final List<Map<String, String>> poems = [
    {'title': 'أنسى أن أموت', 'image': 'images/albrdony.png'},
    {'title': 'صنعاء والموت والميلاد', 'image': 'images/albrdony.png'},
    {'title': 'من منفى إلى منفى', 'image': 'images/albrdony.png'},
    {'title': 'إلا أنا وبلادي', 'image': 'images/albrdony.png'},
    {'title': 'صنعاء والحلم والزمن', 'image':'images/albrdony.png'},
    {'title': 'بلاد في المنفى', 'image': 'images/albrdony.png'},
  {'title': 'من أرض بلقيس', 'image': 'images/albrdony.png'},
  {'title': 'فلسفة الجراح', 'image': 'images/albrdony.png'},
  {'title': 'حين يشقى الناس', 'image': 'images/albrdony.png'},
  {'title': 'مدرسة الحياة', 'image': 'images/albrdony.png'},
  {'title': 'هائم', 'image': 'images/albrdony.png'},
  {'title': 'سحر الربيع', 'image': 'images/albrdony.png'},
  {'title': 'طائر الربيع', 'image': 'images/albrdony.png'},
  {'title': 'عودة القائد', 'image': 'images/albrdony.png'},
  {'title': 'عروس الحزن', 'image': 'images/albrdony.png'},
  {'title': 'أثيم الهوى', 'image': 'images/albrdony.png'},
  {'title': 'وهكذا قالت', 'image': 'images/albrdony.png'},
  {'title': 'ليالي الجائعين', 'image': 'images/albrdony.png'},
  {'title': 'منها وإليها', 'image': 'images/albrdony.png'},
  {'title': 'الشاعر', 'image': 'images/albrdony.png'},
  {'title': 'سائل', 'image': 'images/albrdony.png'},
  {'title': 'في الطريق', 'image': 'images/albrdony.png'},
  {'title': 'الربيع والشعر', 'image': 'images/albrdony.png'},
  {'title': 'سكرة الحب', 'image': 'images/albrdony.png'},
  {'title': 'إلى أمي', 'image': 'images/albrdony.png'},
  {'title': 'إلى صديق', 'image': 'images/albrdony.png'},
  {'title': 'إلى فتاة', 'image': 'images/albrdony.png'},
  {'title': 'إلى شاعر', 'image': 'images/albrdony.png'},
  {'title': 'إلى بلادي', 'image': 'images/albrdony.png'},
  {'title': 'إلى اليمن', 'image': 'images/albrdony.png'},
  {'title': 'إلى صنعاء', 'image': 'images/albrdony.png'},
  {'title': 'إلى عدن', 'image': 'images/albrdony.png'},
  {'title': 'إلى تعز', 'image': 'images/albrdony.png'},
  {'title': 'إلى مأرب', 'image': 'images/albrdony.png'},
  {'title': 'إلى حبيبة', 'image': 'images/albrdony.png'},
  {'title': 'إلى رفيق', 'image': 'images/albrdony.png'},
  {'title': 'إلى أمل', 'image': 'images/albrdony.png'},
  {'title': 'إلى حلم', 'image': 'images/albrdony.png'},
  {'title': 'إلى غدٍ', 'image': 'images/albrdony.png'},
  {'title': 'إلى الحرية', 'image': 'images/albrdony.png'},
  {'title': 'إلى الثورة', 'image': 'images/albrdony.png'},
  {'title': 'إلى الشهيد', 'image': 'images/albrdony.png'},
  {'title': 'إلى الفجر', 'image': 'images/albrdony.png'},
  {'title': 'إلى الشمس', 'image': 'images/albrdony.png'},
  {'title': 'إلى المطر', 'image': 'images/albrdony.png'},
  {'title': 'إلى الربيع', 'image': 'images/albrdony.png'},
  {'title': 'إلى الطفولة', 'image': 'images/albrdony.png'},
  {'title': 'إلى الشباب', 'image': 'images/albrdony.png'},
  {'title': 'إلى الشيخوخة', 'image': 'images/albrdony.png'},
  {'title': 'إلى الموت', 'image': 'images/albrdony.png'},
  {'title': 'إلى الحياة', 'image': 'images/albrdony.png'},
  {'title': 'إلى الحب', 'image': 'images/albrdony.png'},
  {'title': 'إلى الشعر', 'image': 'images/albrdony.png'},
  {'title': 'إلى القلم', 'image': 'images/albrdony.png'},
  {'title': 'إلى الكتاب', 'image': 'images/albrdony.png'},

  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold( appBar: AppBar(title: Text(" $title ديوان",style: TextStyle(color: Colors.white,),textAlign: TextAlign.center,),backgroundColor:const Color.fromARGB(255, 255, 94, 7),actions:[
                  CircleAvatar(
                    radius: 30,
                    backgroundImage: AssetImage("images/albrdony.png"), // صورة المستخدم
                  ),
               ] ,),
      
      

      body: ListView.builder(
      
        
        itemCount: poems.length,
        itemBuilder: (context, index) {
          final poem = poems[index];
          return Card(
      margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15), // الحواف الدائرية
      ),
      color: const Color.fromARGB(255, 255, 94, 7),
     child:  Padding(
            padding: const EdgeInsets.all(0.0),

            child: ListTile(
              //tileColor: const Color.fromARGB(255, 255, 94, 7),
              style: ListTileStyle.list,
              leading: CircleAvatar(
                backgroundImage: AssetImage(poem['image']!),
              ),
              title: Text(
                poem['title']!,
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500,fontStyle: FontStyle.normal,),
                textDirection: TextDirection.rtl,
                textAlign: TextAlign.center,
               
              ),
            ),
          ),
          );
        },
      ),
    );
  }
}
