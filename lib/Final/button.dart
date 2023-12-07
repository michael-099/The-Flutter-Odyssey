import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  // final double radius;
  final String label;
  final double width;
  final double height;
  final double radius;
  const Button(
      {required this.label,
      required this.width,
      required this.height,
      required this.radius});

  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30.0, vertical: 8.0),
      child: Expanded(
        child: Container(
          width: width,
          height: height,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(radius),
            color: Colors.black,
          ),
          child: Center(
            child: Text(
              label,
              style: TextStyle(color: Colors.white),
            ),
          ),
        ),
      ),
    );
  }
}
