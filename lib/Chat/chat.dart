import "package:flutter/material.dart";
import "a_user_msg.dart";
import "bot_msg.dart";
import "chat_field.dart";

class Chat extends StatelessWidget {
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
            appBar: AppBar(
              title: Text("chat", style: TextStyle(color: Colors.white)),
              centerTitle: true,
              backgroundColor: Colors.blue[200],
            ),
            body: Column(
              children: [
                SingleChildScrollView(
                  child: Container(
                    height: MediaQuery.of(context).size.height * 0.81,
                    child: SingleChildScrollView(
                      child: Column(children: [
                        UserMsg(),
                        BotMsg(),
                        UserMsg(),
                        BotMsg(),
                        UserMsg(),
                        BotMsg(),
                        UserMsg(),
                        BotMsg(),
                      ]),
                    ),
                  ),
                ),
                ChatField()
              ],
            )));
  }
}
