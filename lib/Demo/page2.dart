import 'package:flutter/material.dart';

class page2 extends StatefulWidget {
  State createState() => Page2State();
}

class Page2State extends State<page2> {
  bool isSwitch = false;
  bool? isCheckd = false;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.green,
            title: Text(
              "page 2",
              style: TextStyle(color: Colors.white),
            ),
            automaticallyImplyLeading: false,
            leading: IconButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                icon: Icon(
                  Icons.arrow_back_ios_new_rounded,
                  color: Colors.white,
                )),
          ),
          body: SingleChildScrollView(
            child: Column(
              children: [
                Image.asset('black.jpg'),
                Container(
                  margin: EdgeInsets.all(10.0),
                  padding: EdgeInsets.all(2.0),
                  height: 30,
                  width: double.infinity,
                  color: Colors.green,
                  child: Center(
                    child: Text(
                      "hello",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: isSwitch ? Colors.blue : Colors.green,
                      ),
                      onPressed: () => {},
                      child: Text(
                        "blue me  ",
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
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Icon(
                      Icons.local_fire_department,
                      color: Colors.green,
                    ),
                    Icon(
                      Icons.local_fire_department,
                      color: Colors.green,
                    )
                  ],
                ),
                Switch(
                    value: isSwitch,
                    onChanged: (bool newBool) => {
                          setState(() {
                            isSwitch = newBool;
                          })
                        }),
                Checkbox(
                    value: isCheckd,
                    onChanged: (bool? newBool) {
                      setState(() {
                        isCheckd = newBool;
                      });
                    })
              ],
            ),
          )),
    );
  }
}
