import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_app4/screean/login_screan.dart';

class splash extends StatefulWidget {
  const splash({super.key});

  @override
  State<splash> createState() => _splashState();
}

class _splashState extends State<splash> {
  @override
 void initState(){
    super.initState();
    Future.delayed(const Duration(seconds:2),() {
      Navigator.pushReplacement(context,
      MaterialPageRoute(builder: (context)=> singin_screan()),
      );
    });
  

 }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Splash screen"),
      ),
      body: Center(
        child: Text("Wellcom to Splash screen",style: TextStyle(color:Color.fromARGB(255, 0, 164, 68), fontWeight: FontWeight.bold,fontSize: 20)),
      ),
    );  
  }
}