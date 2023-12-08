import "package:flutter/material.dart";
import "button.dart";

class Baner extends StatelessWidget {
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        color: Colors.blue[400],
        child: Column(
          children: [
            Container(
              width: 100,
              height: 100,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(100.0),
                  image: DecorationImage(
                    image: AssetImage(
                      'assets/images/black.jpg',
                    ),
                    fit: BoxFit.cover,
                  )),
            ),
            Text("jassica Simpson"),
            Text("Female"),
            Button(label: "Share Profile", width: 100, height: 20, radius: 10)
          ],
        ));
  }
}
