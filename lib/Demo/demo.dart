import "package:flutter/material.dart";
import "package:namer_app/Demo/home_page.dart";

class Demo extends StatelessWidget {
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(primarySwatch: Colors.green),
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
      bottomNavigationBar: NavigationBar(
        destinations: [
          NavigationDestination(icon: Icon(Icons.home), label: "home"),
          NavigationDestination(icon: Icon(Icons.person), label: "profile"),
        ],
        onDestinationSelected: (int index) {
          setState(() {
            CurrentPage = index;
          });
        },
        selectedIndex: CurrentPage,
      ),
    );
  }
}
