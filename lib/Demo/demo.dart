import "package:curved_navigation_bar/curved_navigation_bar.dart";
import "package:flutter/material.dart";
import "package:namer_app/Demo/home_page.dart";

class Demo extends StatelessWidget {
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.yellow,
        ),
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
        title: Text(
          "Flutter",
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.green,
      ),
      body: Home_page(),
      floatingActionButton: FloatingActionButton(
        onPressed: () => {},
        child: Icon(Icons.ac_unit_sharp),
      ),
      //   bottomNavigationBar: NavigationBar(
      //   destinations: [
      //     NavigationDestination(icon: Icon(Icons.home), label: "home"),
      //     NavigationDestination(icon: Icon(Icons.person), label: "profile"),
      //   ],
      //   onDestinationSelected: (int index) {
      //     setState(() {
      //       CurrentPage = index;
      //     });
      //   },
      //   selectedIndex: CurrentPage,
      // ), 
    //  NavigationRail(
    //     destinations: [
    //       NavigationDestination(icon: Icon(Icons.home), label: "home"),
    //       NavigationDestination(icon: Icon(Icons.person), label: "profile"),
    //     ],
    //     onDestinationSelected: (int index) {
    //       setState(() {
    //         CurrentPage = index;
    //       });
    //     },
    //     selectedIndex: CurrentPage,
    //   ),
      bottomNavigationBar: CurvedNavigationBar(
        backgroundColor: Colors.white,
        items: [
          Icon(
            Icons.home,
            color: Colors.white,
          ),
          Icon(
            Icons.person,
            color: Colors.white,
          ),
        ],
        height: 75.0,
        color: Colors.green,
        onTap: (int index) {
          setState(() {
            CurrentPage = index;
          });
        },
        index: CurrentPage,
      ),
    );
  }
}
