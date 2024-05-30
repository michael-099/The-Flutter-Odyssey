import "package:flutter/material.dart";

class Page1 extends StatelessWidget {
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("page onee"),
        actions: [
          Icon(
            Icons.share,
            color: Colors.white,
            size: 20,
          ),
          Icon(
            Icons.save,
            color: Colors.white,
            size: 20,
          ),
        ],
        leading:IconButton(onPressed:(){},icon: Icon(Icons.menu)),
        backgroundColor: Theme.of(context).primaryColor,
      ),
    );
  }
}
