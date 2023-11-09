import 'package:flutter/material.dart';

class MyTextField extends StatelessWidget {
  final String labelText;
  const MyTextField({
    required this.labelText,
  });
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30.0, vertical: 8.0),
      child: TextField(
        //  controller: textController2,
        decoration: InputDecoration(
          labelText: labelText,
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.black),
            borderRadius: BorderRadius.circular(10),
          ),
        ),
      ),
    );
  }
}
