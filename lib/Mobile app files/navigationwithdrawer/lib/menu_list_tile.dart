import 'package:flutter/material.dart';
import 'birthday.dart';
import 'gratitude.dart';
import 'reminder.dart';

class MenuListTileWidget extends StatelessWidget {
  const MenuListTileWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(children: <Widget>[
      ListTile(
        leading: const Icon(Icons.cake),
        title: const Text("Birthday"),
        onTap: () {
          Navigator.pop(context);
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => const Birthday()));
        },
      ),
      ListTile(
        leading: const Icon(Icons.sentiment_satisfied),
        title: const Text("Gratitude"),
        onTap: () {
          Navigator.pop(context);
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => const Gratitude()));
        },
      ),
      ListTile(
        leading: const Icon(Icons.access_alarm),
        title: const Text("Reminder"),
        onTap: () {
          Navigator.pop(context);
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => const Reminder()));
        },
      ),
      const Divider(
        color: Colors.grey,
        height: 100,
      ),
      ListTile(
        leading: const Icon(Icons.settings),
        title: const Text("Setting"),
        onTap: () {
          Navigator.pop(context);
        },
      ),
    ]);
  }
}
