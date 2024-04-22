import "package:flutter/material.dart";
import "containerWithBox.dart";

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(""),
        leading: IconButton(
          icon: Icon(
            Icons.menu,
          ),
          onPressed: () {},
        ),
        actions: <Widget>[
          IconButton(onPressed: () {}, icon: Icon(Icons.search)),
          IconButton(onPressed: () {}, icon: Icon(Icons.more_vert)),
          IconButton(onPressed: () {}, icon: Icon(Icons.more_horiz))
        ],
        bottom: PreferredSize(
            child: Container(
          color: Colors.lightGreen,
          height: 200.0,
          width: double.infinity,
          child: Center(child: Text("AppBar\ 's bottom ")),
        )),
      ),
      body: SafeArea(child:Padding(
        padding: EdgeInsets.all(10.0),
      child:SingleChildScrollView(child:Column(children:<Widget>[ContainerWithBox()],)))
    );
  }
}
