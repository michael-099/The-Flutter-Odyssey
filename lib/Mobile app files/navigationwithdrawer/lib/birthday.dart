import 'package:flutter/material.dart';

class Birthday extends StatelessWidget {
  const Birthday({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //If you remove this one, the navigation's back and cancel button might not show up
      appBar: AppBar(title: const Text("Birthdays")),
      body: const Center(
          child: Icon(
        Icons.cake,
        size: 150.0,
        color: Colors.yellow,
      )),
    );
  }
}
