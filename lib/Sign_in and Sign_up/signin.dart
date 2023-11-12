import 'package:flutter/material.dart';
import 'package:namer_app/Sign_in%20and%20Sign_up/signup.dart';
import './signup.dart';
import 'MyTextField.dart';
import 'button.dart';

class SignIn extends StatelessWidget {
  final TextEditingController textController = TextEditingController();
  final TextEditingController textController2 = TextEditingController();
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 220.0),
        child: Center(
          child: Column(
            children: [
              Text("Sign in",
                  style: TextStyle(
                      fontSize: 40,
                      color: Color.fromARGB(255, 117, 116, 114),
                      fontWeight: FontWeight.w600)),
              SizedBox(
                height: 20,
                width: 20,
              ),
              MyTextField(
                labelText: "User Name",
                obscureText: false,
              ),
              MyTextField(
                labelText: "password",
                obscureText: true,
              ),
              Button(
                label: "sign in ",
                width: 700,
                height: 40,
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 30.0, vertical: 8.0),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "forget password? ",
                        style: TextStyle(color: Colors.blue[400]),
                        textAlign: TextAlign.left,
                      ),
                      GestureDetector(
                        child: Text(
                          "sign up",
                          style: TextStyle(color: Colors.blue[400]),
                          textAlign: TextAlign.right,
                        ),
                        onTap: () {

                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => SignUp(),
                              ));
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
