import 'package:flutter/material.dart';

class page2 extends StatefulWidget {
  State createState() => Page2State();
}
class Page2State extends State<page2>{

@override
Widget build(BuildContext context) {
  return Scaffold(
    appBar:AppBar(title: Text("page 2"),
     automaticallyImplyLeading: false,
     leading :IconButton(
      onPressed: (){
        Navigator.of(context).pop();
      },
      icon:Icon(Icons.arrow_back_ios_new_rounded)
    ) ,
  ),
  body:Column(children: [
    Image.asset('black.jpg'),
  ],)
  );
}
}
