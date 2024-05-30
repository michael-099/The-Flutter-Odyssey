import "package:flutter/material.dart";

class Gratitude extends StatefulWidget {
  final int radioGroupValue;
  const Gratitude({super.key, required this.radioGroupValue});

  @override
  State<Gratitude> createState() => _GratitudeState();
}

class _GratitudeState extends State<Gratitude> {
  final List<String> _gratitudeList = [];
  late String _selectedGratitude;
  late int _radioGroupValue;

  void _radioOnChanged(int index){
    setState(){
      _radioGroupValue = index;
      _selectedGratitude = _gratitudeList[index];
      print("_selectedGratitude: $_selectedGratitude");
    }
  };

  @override
  void initState() {
    super.initState();
    _gratitudeList..add("God")..add("Family")..add("Friends");
    _radioGroupValue = widget.radioGroupValue;
  }

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(title: const Text("Gratitude"), actions: <Widget>[IconButton(onPressed: () {Navigator.pop(context); return _selectedGratitude; }, icon: const Icon(Icons.check))],),
      body: Padding(padding: const EdgeInsets.all(40.0), child: Row(
        children: <Widget>[
          Radio(
            value: 0, 
            groupValue: 
            _radioGroupValue, 
            onChanged: (index) => _radioOnChanged(index!)), 
            const Text("God"),
            Radio(
            value: 1, 
            groupValue: 
            _radioGroupValue, 
            onChanged: (index) => _radioOnChanged(index!)), 
            const Text("Family"),
            Radio(
            value: 2, 
            groupValue: 
            _radioGroupValue, 
            onChanged: (index) => _radioOnChanged(index!)), 
            const Text("Friends")
          ],
      ),),
    );
  }

}
