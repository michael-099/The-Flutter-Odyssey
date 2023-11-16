import 'package:flutter/material.dart';

class page2 extends StatefulWidget {
  State createState() => Page2State();
}

class Page2State extends State<page2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("page 2"),
          automaticallyImplyLeading: false,
          leading: IconButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              icon: Icon(Icons.arrow_back_ios_new_rounded)),
        ),
        body: Column(
          children: [
            Image.asset('black.jpg'),
            Container(
              margin: EdgeInsets.all(10.0),
              padding: EdgeInsets.all(2.0),
              height: 30,
              width: double.infinity,
              color: Colors.black,
              child: Center(
                child: Text(
                  "hello",
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
            ElevatedButton(
              onPressed: () => {},
              child: Text(
                "click me  ",
              ),
            ),
            OutlinedButton(
              onPressed: () => {},
              child: Text(
                "click me  ",
              ),
            ),
            TextButton(
              onPressed: () => {},
              child: Text(
                "click me  ",
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Icon(
                  Icons.local_fire_department,
                  color:Colors.green,
                ),
                 Icon(
                  Icons.local_fire_department,
                  color:Colors.green,
                )
              ],
            )
          ],
        ));
  }
}
