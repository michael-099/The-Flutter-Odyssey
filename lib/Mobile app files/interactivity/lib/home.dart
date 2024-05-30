import 'package:flutter/material.dart';

/* Common errors made by developers in gesture
- If you didn't define a child for the gesture detector, the entire parent or container will be used to listen for the gesture 
- Horizontal and Vertical drag with Pan
- Something with drag
*/

//For interactivity, we need the widget to be stateful, since we are using it to modify the widget based on our interactivity state

/*
For a drag and drop functionality we need the following:
    - We need a draggable widget
    - We need a target widget
*/

//Read about on serious note database connectivity. Locally persisting data using file.
//Read about Firebase for cloud database.

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
  Color? _paintedColor;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: SafeArea(
          child: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            _buildGestureDetector(),
            const Divider(
              color: Colors.black,
              height: 100.0,
            ),
            _buildDraggable(),
            const Divider(
              color: Colors.black,
              height: 100.0,
            ),
            _buildDragTarget(),
          ],
        ),
      )),
    );
  }

  GestureDetector _buildGestureDetector() {
    return GestureDetector(
      onTap: () {
        ScaffoldMessenger.of(context)
            .showSnackBar(const SnackBar(content: Text("onTap")));
      },
      onDoubleTap: () {
        ScaffoldMessenger.of(context)
            .showSnackBar(const SnackBar(content: Text("onDoubleTap")));
      },
      onLongPress: () {
        ScaffoldMessenger.of(context)
            .showSnackBar(const SnackBar(content: Text("onLongPress")));
      },
      onHorizontalDragUpdate: (DragUpdateDetails details) {
        ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(content: Text("onHorizontalDragUpdate: $details")));
      },
      child: Container(
        color: Colors.deepOrange,
        width: double.infinity,
        padding: const EdgeInsets.all(30.0),
        child: const Icon(
          Icons.access_alarm,
          size: 130,
        ),
      ),
    );
  }

  Draggable<int> _buildDraggable() {
    return Draggable(
      childWhenDragging: const Icon(
        Icons.palette,
        size: 50,
        color: Colors.grey,
      ),
      feedback: const Icon(
        Icons.brush,
        color: Colors.deepOrange,
        size: 80,
      ),
      data: Colors.deepOrange.value,
      child: const Column(children: <Widget>[
        Icon(
          Icons.pallet,
          size: 100.0,
        ),
        Text("Drag me to here"),
      ]),
    );
  }

  DragTarget<int> _buildDragTarget() {
    return DragTarget(
      onAcceptWithDetails: (colorValue) {
        _paintedColor = Color(colorValue as int);
      },
      builder: (BuildContext context, List<dynamic> acceptedData,
              List<dynamic> rejectedData) =>
          acceptedData.isEmpty
              ? Text(
                  "Drag here and see color change",
                  style: TextStyle(color: _paintedColor),
                )
              : Text("Painted Color: $_paintedColor",
                  style: TextStyle(
                      color: _paintedColor, fontWeight: FontWeight.bold)),
    );
  }
}
