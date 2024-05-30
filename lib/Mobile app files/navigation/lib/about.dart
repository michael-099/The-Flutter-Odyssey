import 'package:flutter/material.dart';

class About extends StatelessWidget {
  const About({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("About Page")),
      body: const SafeArea(
        child: Padding(
          padding: EdgeInsets.all(36.0),
          child: Text("About Page"),
        ),
      ),
    );
  }
}
