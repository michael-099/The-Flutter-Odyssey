import 'package:flutter/material.dart';
import 'package:namer_app/Demo/page2.dart';

class Home_page extends StatelessWidget {
  Widget build(BuildContext context) {
    return Center(
      child: Container(
          child: ElevatedButton(
             child: Text("click"),
              onPressed: () => {
                    Navigator.of(context)
                        .push(MaterialPageRoute(builder: (BuildContext context) {
                      return page2();
                    }))
                  },
             )),
    );
  }
}