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
                padding: const EdgeInsets.symmetric(vertical:220.0 ),
                child: Center(
                  child: Column(
                    children: [
                      Text("Sign in",style: TextStyle(fontSize: 40,color:Color.fromARGB(255, 117, 116, 114),fontWeight: FontWeight.w600)),
                      SizedBox(height: 20,width: 20,),
                      MyTextField(labelText: "User Name",),
                      MyTextField( labelText: "password",),
                      Button(label: "sign in ", width: 700 ,height: 40,),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 30.0, vertical: 8.0),
                        child: Row(
                           mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children:[                      
                            Text("forget password? ",style: TextStyle(color: Colors.blue[400]),textAlign: TextAlign.left,),
                            Text("sign up",style: TextStyle(color: Colors.blue[400]),textAlign: TextAlign.right,),]),
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
