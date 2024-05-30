import "package:flutter/material.dart";

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Common Widget Demo"),
      ),
      body: Center(
        child: Padding(
            padding: const EdgeInsets.all(24),
            child: SingleChildScrollView(
                child: Column(
              children: <Widget>[
                const Text(
                  "Mobile App dev",
                  style: TextStyle(
                    fontSize: 24.0,
                    color: Colors.green,
                    decoration: TextDecoration.underline,
                    decorationColor: Colors.purple,
                    decorationStyle: TextDecorationStyle.dotted,
                    fontStyle: FontStyle.italic,
                    fontWeight: FontWeight.bold,
                  ),
                  maxLines: 6,
                  textAlign: TextAlign.center,
                ),
                const Divider(
                  height: 60,
                  color: Colors.blue,
                ),
                RichText(
                    text: const TextSpan(
                        text: "Mobile App",
                        style: TextStyle(
                          fontSize: 24.0,
                          color: Colors.green,
                          decoration: TextDecoration.underline,
                          decorationColor: Colors.purple,
                          decorationStyle: TextDecorationStyle.dotted,
                          fontStyle: FontStyle.italic,
                          fontWeight: FontWeight.normal,
                        ),
                        children: <TextSpan>[
                      TextSpan(text: " Dvt"),
                      TextSpan(
                          text: "(CoSc4122)",
                          style: TextStyle(
                            color: Colors.orange,
                            fontStyle: FontStyle.normal,
                            fontWeight: FontWeight.bold,
                          ))
                    ])),
                const Divider(
                  height: 60,
                  color: Colors.orange,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    ElevatedButton(
                      onPressed: () => {},
                      child: const Icon(
                        Icons.flight,
                      ),
                    ),
                    const Text("Column 1", style: TextStyle(fontSize: 15),),
                    const Text("Column 2", style: TextStyle(fontSize: 15)),
                    const Text("Column 3", style: TextStyle(fontSize: 15)),
                  ],
                )
              ],
            ))),
      ),
      floatingActionButton: FloatingActionButton(
          onPressed: () => {
                showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return AlertDialog(
                        title: const Text("Dialog"),
                        content: const Text("This is a dialog"),
                        actions: <Widget>[
                          TextButton(
                              onPressed: () => {Navigator.of(context).pop()},
                              child: const Text("Close"))
                        ],
                      );
                    })
              },
          child: const Icon(Icons.play_arrow)),
    );
  }
}
