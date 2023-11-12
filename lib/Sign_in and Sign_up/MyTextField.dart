import 'package:flutter/material.dart';

class MyTextField extends StatelessWidget {
  final String labelText;
  final bool obscureText;
  const MyTextField({
    required this.labelText,required this.obscureText,
  });
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30.0, vertical: 8.0),
      child: TextField(
        obscureText: obscureText,
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
