import 'package:flutter/material.dart';
import 'package:namer_app/Sign_in%20and%20Sign_up/signin.dart';
import 'MyTextField.dart';
import 'button.dart';

class SignUp extends StatelessWidget {
  final TextEditingController textController = TextEditingController();
  final TextEditingController textController2 = TextEditingController();
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 200.0, horizontal: 30),
        child: Center(
          child: Column(
            children: [
              Text("Sign Up",
                  style: TextStyle(
                      fontSize: 40,
                      color: Color.fromARGB(255, 117, 116, 114),
                      fontWeight: FontWeight.w600)),
              MyTextField(
                labelText: "User Name",
                obscureText: false,
              ),
              MyTextField(
                labelText: "Email",
                obscureText: false,
              ),
              MyTextField(
                labelText: "password",
                obscureText: true,
              ),
              Button(label: "sign up ", width: 7500, height: 40),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 30.0, vertical: 8.0),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      GestureDetector(
                        child: Text(
                          "sign in",
                          style: TextStyle(color: Colors.blue[400]),
                          textAlign: TextAlign.right,
                        ),
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => SignIn()));
                        },
                      ),
                    ]),
              ),
            ],
          ),
        ),
      ),
    ));
  }
}
