import 'package:flutter/material.dart';
import 'about.dart';
import 'gratitude.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String user = "...";

  //Navigator push needs two things:
  // context of the app and
  //the component to be rendered on the new page.

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text("Navigation Demo"),
        actions: <Widget>[
          IconButton(
              onPressed: () => _openAboutPage(
                    context: context,
                    // fullScreenDialog: true,
                  ),
              icon: const Icon(Icons.info_outline)),
          const Icon(Icons.search)
        ],
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Text("Grateful for: $user"),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () =>{}, //_openGratitudePage(),
        tooltip: "Gratitude",
        child: const Icon(Icons.abc_rounded),
      ),
    );
  }

  void _openAboutPage({required context, bool fullScreenDialog = false}) {
    Navigator.push(
        context,
        MaterialPageRoute(
            fullscreenDialog: fullScreenDialog,
            builder: (context) => const About()));
  }

  void _openGratitudePage(
      {required context, bool fullScreenDialog = false}) async {
    final String _gratitudeResponse = await Navigator.push(
        context,
        MaterialPageRoute(
            fullscreenDialog: fullScreenDialog,
            builder: (context) => Gratitude(groupValue = -1)));

    user = _gratitudeResponse;
  }
}
