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
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical:220.0 ),
                child: Center(
                  child: Column(
                    children: [
                      
              
                       Padding(
                         padding: const EdgeInsets.symmetric(horizontal:30.0 ,vertical: 8.0),
                         
                         child: TextField(
                          //  controller: textController2,
                          decoration: InputDecoration(
                            labelText: "user name ",
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.black),
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                                           ),
                       ),
                     
                       
                      
                
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal:30.0 ,vertical: 8.0),

                        child: TextField(
                          //  controller: textController2,
                          decoration: InputDecoration(
                            labelText: "password",
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.black),
                               borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            )
            )
            );
  }
}
