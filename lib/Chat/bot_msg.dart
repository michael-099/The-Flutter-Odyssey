import "package:flutter/material.dart";

class BotMsg extends StatelessWidget {
  Widget build(BuildContext context) {
    return ClipRRect(
      child: Container(
        // decoration: BoxDecoration(borderRadius: BorderRadius.circular(1.0)),
        constraints: BoxConstraints(
          minHeight: 100, // Set your minimum height
          maxHeight: double.infinity, // Optionally, set a maximum height
          minWidth: MediaQuery.of(context).size.width * 0.99,
          maxWidth: MediaQuery.of(context).size.width * 0.99,
        ),
        padding: EdgeInsets.all(16.0),
        margin: EdgeInsets.fromLTRB(16.0,16.0,100.0,16.0),
        color: const Color.fromARGB(255, 47, 90, 124),
        
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Icon(Icons.chat_bubble),
                Text(
                  "bot",
                  style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 20,
                  ),
                ),
              ],
            ),
            Text(
                "Lorem ipsum dolor sit amet, consectetur adipiscing elit.")
          ],
        ),
      ),
    );
    ;
  }
}
