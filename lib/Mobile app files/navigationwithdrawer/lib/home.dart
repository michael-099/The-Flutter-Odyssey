import 'package:flutter/material.dart';
import 'birthday.dart';
import 'gratitude.dart';
import 'left_drawer.dart';
import 'reminder.dart';

class Home extends StatefulWidget {
  const Home({super.key, this.title = "Drawer demo"});

  final String title;

  @override
  State<Home> createState() => _HomeState();
}

/*
Drawer needs to have a ListView. 
List View will contain the list of widgets that will be displayed there.
*/

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      drawer: const LeftDrawer(),
      endDrawer: const LeftDrawer(),
      body: SafeArea(child: Container()),
      bottomNavigationBar: BottomAppBar(
        color: Colors.blue,
        //The below is used if we have a floating action button. I think it will be included in the constructor of the 'BottomAppBar'.
        shape: const CircularNotchedRectangle(),
        child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const Birthday()));
                  },
                  icon: const Icon(Icons.cake)),
              IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const Gratitude()));
                  },
                  icon: const Icon(Icons.sentiment_satisfied)),
              IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const Reminder()));
                  },
                  icon: const Icon(Icons.access_alarm))
            ]),
      ),
      //Docked means the navigation bar will make space for the floating action button.
      floatingActionButtonLocation: FloatingActionButtonLocation.endDocked,
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Colors.blue,
        child: const Icon(Icons.add),
      ),
    );
  }
}
