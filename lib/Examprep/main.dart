import "package:flutter/material.dart";
import "page1.dart";
import "page2.dart";
// import "page3.dart";

class MyApp extends StatelessWidget {
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(
          primaryColor: Colors.orange,
        ),
        home: Page1());
  }
}
