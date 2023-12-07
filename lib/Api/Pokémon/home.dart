import "package:flutter/material.dart";
import "package:http/http.dart" as http;
import "dart:convert";

class Home extends StatefulWidget {
  State createState() => HomeState();
}

class HomeState extends State<Home> {
  Future<void> fetchData() async {
    final response = await http.get(Uri.parse("https://pokeapi.co/api/v2/pokemon/ditto"));
  }

  Widget build(BuildContext context) {
    return Scaffold();
  }
}
