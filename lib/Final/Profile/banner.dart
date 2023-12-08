import "package:flutter/material.dart";
import "button.dart";

class Baner extends StatelessWidget {
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blue[400],
        child: Column(
      children: [
        Image.asset(
          'black.jpg',
          width: 200,
          height: 200,
          fit: BoxFit.cover,
          alignment: Alignment.center,
        ),
        Text("jassica Simpson"),
        Text("Female"),
        Button(label: "Share Profile", width: 100, height: 20, radius: 10)
      ],
    ));
  }
}
