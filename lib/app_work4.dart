import 'package:flutter/material.dart';
import 'package:flutter_app4/chat.dart';
import 'package:flutter_app4/screean/splash.dart';
import 'package:flutter_app4/screean/title_kased.dart';

// ignore: must_be_immutable
class AppWork4 extends StatelessWidget {
  List items=[Text("data"),];

  AppWork4({super.key});
final List<Map<String, String>> books = [
  {
    'title': 'في طريق الفجر',
    'author': 'عبد الله البردوني',
    'image': 'images/في طريق الفجر.png',
  },
  {
    'title': 'من أرض بلقيس',
    'author': 'عبد الله البردوني',
    'image': 'images/من ارض بلقيس.png',
  },
  
  {
    'title': 'مدينة الغد',
    'author': 'عبد الله البردوني',
    'image': 'images/مدينة الغد.webp',
  },
  {
    'title': 'لعيني أم بلقيس',
    'author': 'عبد الله البردوني',
    'image': 'images/لعيني ام بلقيس.jpg',
  },
  {
    'title': 'السفر إلى الأيام الخضر',
    'author': 'عبد الله البردوني',
    'image': 'images/السفر الى الايام الخضر.jpg',
  },
  {
    'title': 'وجوه دخانية في مرايا الليل',
    'author': 'عبد الله البردوني',
    'image': 'images/albrdony.png',
  },
  {
    'title': 'زمان بلا نوعية',
    'author': 'عبد الله البردوني',
    'image': 'images/زمان بلا نوعية.jpg',
  },
  {
    'title': 'ترجمة رملية لأعراس الغبار',
    'author': 'عبد الله البردوني',
    'image': 'images/ترجمة رملية لاعراس الغبار.webp',
  },
  {
    'title': 'كائنات الشوق الآخر',
    'author': 'عبد الله البردوني',
    'image': 'images/كائنات الشوق الاخر.png',
  },
  {
    'title': 'رجعة الحكيم بن زايد',
    'author': 'عبد الله البردوني',
    'image': 'images/رجعت الحكيم علي.png',
  },
  {
    'title': 'جواب العصور',
    'author': 'عبد الله البردوني',
    'image': 'images/جواب العصور.png',
  },
  {
    'title': 'رواغ المصابيح',
    'author': 'عبد الله البردوني',
    'image': 'images/رواغ المصابيح.png',
  },
 
];



  @override
  Widget build(BuildContext context) {
   return  Scaffold(
    appBar: AppBar(title: Text(" تطبيق البردوني",style: TextStyle(color: Colors.white,),textAlign: TextAlign.center,),backgroundColor:const Color.fromARGB(255, 255, 94, 7),actions:[
                  CircleAvatar(
                    radius: 30,
                    backgroundImage: AssetImage("images/albrdony.png"), // صورة المستخدم
                  ),
               ] ,),
  
    drawer:  Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          DrawerHeader(
            decoration: BoxDecoration(color: Color.fromARGB(255, 255, 94, 7)),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: CircleAvatar(
                    radius: 45,
                    backgroundImage: AssetImage("images/abdualrhmen.png"), // صورة المستخدم
                  ),
                ),
                SizedBox(height: 10),
                Text("عبدالرحمن الحميدي", style: TextStyle(color: Colors.white, fontSize: 20,fontStyle:FontStyle.italic)),
                Text("alhomydybdu997@gmail.com", style: TextStyle(color: Colors.white70)),
              ],
            ),
          ),

          ListTile(title: Text("دردشة"),
             onTap: () {
                Navigator.of(context).push(MaterialPageRoute(builder: (context) =>chat() ,));
               },leading: Icon(Icons.chat),trailing: Icon(Icons.arrow_forward_ios,color: Colors.red,),
          ),

            ListTile(title: Text("تسجيل الدخول"),
             tileColor: Colors.white,
  
        onTap: () {
              Navigator.of(context).push(MaterialPageRoute(builder: (context) =>splash(),));
            },leading: Icon(Icons.person),trailing: Icon(Icons.arrow_forward_ios,color: Colors.red,),
            ),
            ListTile(


                leading: Icon(Icons.home),trailing: Icon(Icons.arrow_forward_ios,color: Colors.red,),
                title: Text("الرئيسية",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold)),
                onTap: () {},
                
               ),

              Divider(),
          // قسم مواقع التواصل
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Text("مواقع التواصل",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold)),
          ),
          ListTile(
                    leading: Icon(Icons.facebook),trailing: Icon(Icons.arrow_forward_ios,color: Colors.red,),
                    title: Text("فيسبوك",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold)),
                    onTap: () {},
                  ),
                  ListTile(
                    leading: Icon(Icons.camera_alt),trailing: Icon(Icons.arrow_forward_ios,color: Colors.red,),
                    title: Text("أستجرام",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold)),
                    onTap: () {},
                  ),
          ListTile(leading: Icon(Icons.work),trailing: Icon(Icons.arrow_forward_ios,color: Colors.red,), title: Text("لينكدن",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),), onTap: () {}),
          ListTile(leading: Icon(Icons.send),trailing: Icon(Icons.arrow_forward_ios,color: Colors.red,), title: Text("تيليجرام",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold)), onTap: () {}),
          ListTile(leading: Icon(Icons.chat),trailing: Icon(Icons.arrow_forward_ios,color: Colors.red,), title: Text("تويتر",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold)), onTap: () {}),

          Divider(),
         
          // قسم المراسلات والاتصال
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Text("المراسلات والاتصال",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold)),
          ),
          ListTile(leading: Icon(Icons.whatshot),trailing: Icon(Icons.arrow_forward_ios,color: Colors.red,), title: Text("راسلنا واتساب",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold)), onTap: () {}),
          ListTile(leading: Icon(Icons.phone),   trailing: Icon(Icons.arrow_forward_ios,color: Colors.red,),  title: Text("اتصل بنا هاتفيا",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold)), onTap: () {}),
          ListTile(leading: Icon(Icons.message), trailing: Icon(Icons.arrow_forward_ios,color: Colors.red,),  title: Text("رسالة نصية",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold)), onTap: () {}),
          ListTile(leading: Icon(Icons.facebook),trailing: Icon(Icons.arrow_forward_ios,color: Colors.red,), title: Text("راسلنا ماسنجر",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold)), onTap: () {}),

          Divider(),

          // قسم التفاعل والمشاركة
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Text("التفاعل والمشاركة",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold)),
          ),
          ListTile(leading: Icon(Icons.share),trailing: Icon(Icons.arrow_forward_ios,color: Colors.red,), title: Text("شارك رابط التطبيق",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold)), onTap: () {}),

          Divider(),

          // قسم حول التطبيق
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Text("حول",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold)),
          ),
          ListTile(leading: Icon(Icons.info),trailing: Icon(Icons.arrow_forward_ios,color: Colors.red,), title: Text("حول التطبيق",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold)), onTap: () {}),
          ListTile(leading: Icon(Icons.privacy_tip),trailing: Icon(Icons.arrow_forward_ios,color: Colors.red,), title: Text("سياسة الخصوصية",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold)), onTap: () {}),
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
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) => title_kased(
                      title: book['title']!,
                      author: book['author']!,
                    ),
                  ),
                );
              },
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Expanded(
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(12),
                      child: Image.asset(
                        book['image']!,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  SizedBox(height: 8),
                  Text(
                    book['title']!,
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    textDirection: TextDirection.rtl,
                    textAlign: TextAlign.center,
                  ),
                  Text(
                    book['author']!,
                    style: TextStyle(fontSize: 14, color: Colors.grey[700]),
                    textDirection: TextDirection.rtl,
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            );
          },
        ),
      ),





   bottomNavigationBar: BottomNavigationBar(
    backgroundColor: const Color.fromARGB(255, 255, 94, 7),
    items:[

  BottomNavigationBarItem(
    icon: IconButton(onPressed: () {
      ScaffoldMessenger.of( context).showSnackBar(SnackBar(
        
        content: Text("مرحباُ بك في تطبيق البردوني")));
    },icon:Icon(Icons.home)),label: "home"),
  BottomNavigationBarItem(icon: Icon(Icons.share),label: "home"),
  BottomNavigationBarItem(icon: Icon(Icons.exit_to_app),label: "home"),
   ]),
   );
  }
  
}