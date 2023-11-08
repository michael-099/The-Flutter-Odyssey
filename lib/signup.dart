import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  final TextEditingController textController = TextEditingController();
  final TextEditingController textController2 = TextEditingController();
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
              title: Text("sign in"),
            ),
            body:SafeArea(
              child: Center(
                child: Column(
                  children: [
        
        
                     Padding(
                       padding: const EdgeInsets.all(35.0),
                       child: TextField(
                        //  controller: textController2,
                        decoration: InputDecoration(
                          labelText: "user name ",
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.black),
                          ),
                        ),
                                         ),
                     ),
                   


                    Padding(
                       padding: const EdgeInsets.all(35.0),
                       child: TextField(
                        //  controller: textController2,
                        decoration: InputDecoration(
                          labelText: "Email ",
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.black),
                          ),
                        ),
                                         ),
                     ),
                   
                   
              
                    Padding(
                      padding: const EdgeInsets.all(35.0),
                      child: TextField(
                        //  controller: textController2,
                        decoration: InputDecoration(
                          labelText: "password",
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.black),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            )
            )
            );
  }
}
