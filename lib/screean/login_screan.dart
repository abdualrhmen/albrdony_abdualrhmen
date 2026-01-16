import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_app4/WELCOM.dart';


class singin_screan extends StatefulWidget {
   const singin_screan({super.key});

  @override
  State<singin_screan> createState() => _singin_screanState();
}

class _singin_screanState extends State<singin_screan> {
   final TextEditingController dataname=TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      backgroundColor: Colors.grey[200],
      body: Column(
        children: [
          SizedBox(height: 150,),
             
 SizedBox(height: 30,),

          Image.asset('images/abdualrhmen.png',
          height: 150,
          ),
          SizedBox(height: 20,),
        Text('SING IN ',
        style: TextStyle(fontSize: 40,fontWeight: FontWeight.bold),),
 SizedBox(height: 30,),

        
         Text('Welcome Bake! Nice To See You Again :) ',
        style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
        
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25),
          child: Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(12)
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: TextField(
                controller: dataname,
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: "email",
                ),
              ),
            ),
          ),
        ),
        SizedBox(height: 20,),

        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25),
          child: Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(12)
            ),
            child: Padding(
              
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: TextField(
                obscureText: true,
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: "Password",
                ),
              ),
            ),
          ),
        ),
        SizedBox(height: 14,),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25),
          child: ElevatedButton(
            onPressed: () { 
              Navigator.of(context).push(MaterialPageRoute(builder: (context) =>Welcom(name: dataname.text,) ,));
             },
            child: Text('sign in',
                      style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold,fontSize: 20),
            ),
          ),
        ),
        SizedBox(height: 14,),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            
            Text('Note yet a nember?', style: TextStyle(color:Color.fromARGB(255, 255, 94, 7),fontWeight: FontWeight.bold),),
            Text('sign up now', style: TextStyle(color:Color.fromARGB(255, 0, 164, 68), fontWeight: FontWeight.bold,fontSize: 20),),
          ],
        ),

        ],
        

      ),
    
    );
  }
}
