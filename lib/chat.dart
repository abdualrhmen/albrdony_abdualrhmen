import 'package:flutter/material.dart';
import 'package:flutter_app4/drawer.dart';
import 'package:flutter_app4/massege.dart';

// ignore: must_be_immutable
class chat extends StatefulWidget {
   chat({super.key});

  @override
  State createState(){
   return _chatState();
  }
}

class _chatState extends State {
List Students=["namil","majed","aboody","yeassen"];

TextEditingController name=TextEditingController();
int i=0;
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
      labelText: "Name",
      hintText: "input u name",
      border: OutlineInputBorder(borderRadius: BorderRadius.circular(40))),
  ),
),
  ElevatedButton(style: ButtonStyle(backgroundColor: WidgetStatePropertyAll(c),), onPressed:() {
   setState(() {
    
   }); Students.add(name.text);
   name.clear();
    
  }, child: Text("add student",style: TextStyle(color: Colors.white,fontSize: 18,fontWeight: FontWeight.bold),)),
        Expanded(
          child: ListView.builder(
            itemCount: Students.length,
            itemBuilder: (context, i) => Card(
            color:c,
            child:ListTile(
            title: Text(Students[i], textAlign: TextAlign.center,style:TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold),),
              onTap: () {
              Navigator.of(context).push(MaterialPageRoute(builder: (context) =>massege(),));}
          ),
          ),),
        )
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