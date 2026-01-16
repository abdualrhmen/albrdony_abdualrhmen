import 'package:flutter/material.dart';
import 'package:flutter_app4/drawer.dart';

// ignore: must_be_immutable
class massege extends StatefulWidget {
   massege({super.key});

  @override
  State createState(){
   return _massegeState();
  }
}

class _massegeState extends State {
List Students=[];
String datatrans="";
TextEditingController name=TextEditingController();

Color c=Color.fromARGB(255, 255, 94, 7);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("عبدالله البردوني"),backgroundColor: Colors.white60,centerTitle: true,),
   
     drawer: mydrawer(),
    body:Column(
      children: [
Padding(
  padding: const EdgeInsets.all(8.0),
  child: TextField(
    controller: name,

    decoration: InputDecoration(
    // label: Text("Name"),
      labelText: "نص الرسالة",
      hintText: "إظافة رسالة",
      border: OutlineInputBorder(borderRadius: BorderRadius.circular(40))),
  ),
),
  ElevatedButton(style: ButtonStyle(backgroundColor: WidgetStatePropertyAll(c),), onPressed:() {
   setState(() {
    
   }); Students.add(name.text);
   name.clear();
    
  }, child: Text("إظافة رسالة",style: TextStyle(color: Colors.white,fontSize: 18,fontWeight: FontWeight.bold),)),
        Expanded(
          child: Container(
            
             alignment: Alignment.bottomRight,
            child: ListView.builder(
              itemCount: Students.length,
              itemBuilder: (context, i) => Container(
             alignment: Alignment.bottomLeft,

            child: Text(Students[i], textAlign: TextAlign.center,style:TextStyle(color: const Color.fromARGB(255, 0, 0, 0),fontSize: 20,fontWeight: FontWeight.bold,backgroundColor: c),),
             ),
            ),),
          ),
        
        // for (int i=0;i<Students.length;i++)
        // Card(
        //   color:c,
        //   child:ListTile(
        //   title: Text(Students[i], textAlign: TextAlign.center,style:TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold),),
        // ),
        // )
        
      ],
    ) ,
    );
  }
}
