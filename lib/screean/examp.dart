import 'package:flutter/material.dart';
import 'package:flutter_app4/drawer.dart';
import 'package:flutter_app4/massege.dart';

// ignore: must_be_immutable
class examp extends StatefulWidget {
   examp({super.key});

  @override
  State createState(){
   return _exampState();
  }
}

class _exampState extends State {


int i=0;
Color c=Color.fromARGB(255, 255, 94, 7);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text(""),backgroundColor: Colors.white60,centerTitle: true,),
   
   
    body:Column(
      children: [

        ElevatedButton(style: ButtonStyle(backgroundColor: WidgetStatePropertyAll(c),), onPressed:() {
   setState(() {
    
   });i++;
   
    
  }, child: Text("$i")),
 
      ],
    ) ,
    );
  }
}