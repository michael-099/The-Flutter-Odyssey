import 'package:flutter/material.dart';

class Gratitude extends StatelessWidget {
  const Gratitude({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //If you remove this one, the navigation's back and cancel button might not show up
      appBar: AppBar(title: const Text("Gratitude")),
      body: const Center(
          child: Icon(
        Icons.sentiment_satisfied,
        size: 150.0,
        color: Colors.blue,
      )),
    );
  }
}
