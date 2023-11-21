import "package:curved_navigation_bar/curved_navigation_bar.dart";
import "package:flutter/material.dart";
import "package:namer_app/Demo/home_page.dart";

class Demo extends StatelessWidget {
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(primarySwatch: Colors.yellow, ),
        home: RootPage());
  }
}

class RootPage extends StatefulWidget {
  State createState() => RootPageState();
}

class RootPageState extends State<RootPage> {
  int CurrentPage = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Flutter"),
      ),
      body: Home_page(),
      floatingActionButton: FloatingActionButton(
        onPressed: () => {},
        child: Icon(Icons.ac_unit_sharp),
      ),
      bottomNavigationBar: CurvedNavigationBar(
        backgroundColor: Colors.white,
        items: [
          Icon(Icons.home), 
          Icon(Icons.person),
        ],
        height: 75.0,
        color: Colors.green,
        // onDestinationSelected: (int index) {
        //   setState(() {
        //     CurrentPage = index;
        //   });
        // },
        // selectedIndex: CurrentPage,
      ),
    );
  }
}
