import "package:flutter/material.dart";

class Discription extends StatelessWidget {
  Widget build(BuildContext context) {
    return Align(alignment: Alignment.topLeft,
      child: Container(
        width:200,
        height:100,
          child: Column(
        children: [ 
          Align(alignment: Alignment.centerLeft,child:Text("Hello,"),),
          Align(alignment: Alignment.centerLeft,child:Text("login now."),),
          Align(alignment: Alignment.centerLeft,child:Text("welcome back please fillin the form to sign in and continue "),),
        
        ],
      )),
    );
  }
}
