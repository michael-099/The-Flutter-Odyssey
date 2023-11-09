import 'package:flutter/material.dart';
import 'MyTextField.dart';

class MyApp extends StatelessWidget {
  final TextEditingController textController = TextEditingController();
  final TextEditingController textController2 = TextEditingController();
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
              title: Text("sign in"),
            ),
            body:SafeArea(
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical:220.0 ),
                child: Center(
                  child: Column(
                    children: [
                      MyTextField(labelText: "User Name",),
                      MyTextField( labelText: "password",),
                    ],
                  ),
                ),
              ),
            )
            )
            );
  }
}