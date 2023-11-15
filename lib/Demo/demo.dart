import "package:flutter/material.dart";

class Demo extends StatelessWidget {
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
        theme: ThemeData(primarySwatch: Colors.green), home: RootPage());
  }
}

class RootPage extends StatefulWidget {
  State createState() => RootPageState();
}

class RootPageState extends State<RootPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
    );
  }
}
