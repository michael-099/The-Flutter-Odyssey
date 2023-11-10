import 'package:flutter/material.dart';
import 'MyTextField.dart';
import 'button.dart';


class MyApp extends StatelessWidget {
  final TextEditingController textController = TextEditingController();
  final TextEditingController textController2 = TextEditingController();
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            
            body:SafeArea(
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical:220.0, horizontal: 30),
                child: Center(
                  child: Column(
                   children: [ 
                      Text("Sign Up",style: TextStyle(fontSize: 40,color:Color.fromARGB(255, 117, 116, 114),fontWeight: FontWeight.w600)),
                        MyTextField(labelText: "User Name",),
                        MyTextField( labelText: "password",),
                        MyTextField(labelText: "Email",),
                        Button(label: "sign up ", width: 7500 ,height: 40),
                         Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 30.0, vertical: 8.0),
                        child: Row(
                           mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children:[                      
                            Text("sign in",style: TextStyle(color: Colors.blue[400]),textAlign: TextAlign.right,),]),
                      ),     
                      ],
                  ),
                ),
              ),
            )
            )
            );
  }
}
