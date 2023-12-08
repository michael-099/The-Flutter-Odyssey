import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  // final double radius;
  final String label;
  final double width;
  final double height;
  final double radius;
  final Color color;
  const Button(
      {required this.label,
      required this.width,
      required this.height,
      required this.radius,
      required this.color});

  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 0.0, vertical: 15.0),
        // child: Expanded(
        child: Container(
          width: width,
          height: height,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(radius),
            color: color,
          ),
          child: Center(
            child: Text(
              label,
              style: TextStyle(color: Colors.white),
            ),
            // ),
          ),
        ),
      ),
    );
  }
}
