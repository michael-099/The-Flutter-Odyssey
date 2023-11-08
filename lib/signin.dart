import 'package:flutter/material.dart';

class MyApp extends StatelessWidget{
  final TextEditingController textController = TextEditingController();
  final TextEditingController textController2 = TextEditingController();
  Widget build(BuildContext context){
    return MaterialApp(
      home:Scaffold(
      appBar:AppBar(
        title: Text("sign in"),

      ),
      body:Center(
        child: Column(children: [
          Text("user name"),
          TextField(
             controller: textController, 
             decoration: InputDecoration(labelText: "password"),
            ),
          Text("password"),
          TextField(
             controller: textController2, 
             decoration: InputDecoration(labelText: "password"),
            ),
          
          
        ],
        ),
      )
      )
    );

  }

}