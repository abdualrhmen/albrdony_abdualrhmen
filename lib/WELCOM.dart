import 'package:flutter/material.dart';

class Welcom extends StatelessWidget {
  final name;
  const Welcom({super.key, this.name});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Wellcom"),
      ),
      body: Center(
        child: Text("Wellcom $name",style: TextStyle(color:Color.fromARGB(255, 0, 164, 68), fontWeight: FontWeight.bold,fontSize: 40)),
      ),
    );
  }
}