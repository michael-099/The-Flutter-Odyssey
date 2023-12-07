import 'package:flutter/material.dart';

class MyTextField extends StatelessWidget {
  final String labelText;
  final bool obscureText;
  final double width;
  // final double radius;

  const MyTextField(
      {required this.labelText,
      required this.obscureText,
      required this.width,
      // rrequired this.radius
      });
  Widget build(BuildContext context) {
    return Container(
      width: width,
      child: TextField(
        obscureText: obscureText,
        decoration: InputDecoration(
            labelText: labelText,
            border: UnderlineInputBorder(
                borderSide: BorderSide(color: Colors.green))
            // enabledBorder: OutlineInputBorder(
            //   borderSide: BorderSide(color: Colors.black),
            //   borderRadius: BorderRadius.circular(radius),
            // ),
            ),
      ),
    );
  }
}
