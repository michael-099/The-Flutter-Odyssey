import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Common widget demo"),
        leading: IconButton(
          // Leading is something that comes before title in the app bar.
          icon: const Icon(Icons.menu),
          onPressed: () => {},
        ),
        actions: <Widget>[
          IconButton(icon: const Icon(Icons.search), onPressed: () => {}),
          IconButton(icon: const Icon(Icons.more_vert), onPressed: () => {}),
          IconButton(icon: const Icon(Icons.more_horiz), onPressed: () => {})
        ],
        backgroundColor: Colors.grey,
      ),
      body: const SafeArea(
        child: Padding(
          padding: EdgeInsets.all(20.0),
          child: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                const ContainerWithBox(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class ContainerWithBox extends StatelessWidget {
  const ContainerWithBox({super.key})

  @override
  Widget build(BuildContext context){
    return Column(
      children: <Widget>[
        Container(
          height: 200.0,
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(100.0)), boxShadow: [BoxShadow(color: Colors.grey, blurRadius: 2.0,)]),
        ),

      ],
    );
  }
}
