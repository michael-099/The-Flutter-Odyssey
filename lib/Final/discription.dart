import "package:flutter/material.dart";

class Discription extends StatelessWidget {
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topLeft,
      child: Container(
          width: 200,
          height: 100,
          child: Column(
            children: [
              Align(
                alignment: Alignment.centerLeft,
                child: Text("Hello,",
                    style: TextStyle(
                      color: Color.fromARGB(255, 0, 136, 20),
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 1,
                    )),
              ),
              Align(
                  alignment: Alignment.centerLeft,
                  child: Text("login now.",
                      style: TextStyle(
                          color: Colors.blue[90],
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                          letterSpacing: 1))),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                    "welcome back please fillin the form to sign in and continue "),
              ),
            ],
          )),
    );
  }
}
