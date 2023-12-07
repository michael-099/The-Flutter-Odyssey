import 'package:flutter/material.dart';
import "discription.dart";
import "MyTextField.dart";
import "button.dart";

class Login extends StatelessWidget {
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            body: Column(
      children: [
        Discription(),
        MyTextField(
          labelText: "Login",
          obscureText: false,
          width:500,
          radius:20.0,
        ),
        Button(height: 50,label: "Login ",width: 600,),
      ],
    )));
  }
}
