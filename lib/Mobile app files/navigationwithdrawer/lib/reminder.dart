import 'package:flutter/material.dart';

class Reminder extends StatelessWidget {
  const Reminder({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //If you remove this one, the navigation's back and cancel button might not show up
      appBar: AppBar(title: const Text("Reminder")),
      body: const Center(
          child: Icon(
        Icons.access_alarm,
        size: 150.0,
        color: Colors.red,
      )),
    );
  }
}
