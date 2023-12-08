import "package:flutter/material.dart";
import "banner.dart";
import 'info.dart';

class Profile extends StatelessWidget {
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            body: Column(
      children: [
        Baner(),
        Info(),
      ],
    )));
  }
}
