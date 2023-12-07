import 'package:flutter/material.dart';
import "discription.dart";
import "MyTextField.dart";

class Login extends StatelessWidget {
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            body: Column(
      children: [
        Discription(),
        MyTextField(
          labelText:"Login",
          obscureText: false,
        )
      ],
    )));
  }
}
