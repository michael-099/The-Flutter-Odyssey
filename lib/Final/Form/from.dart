import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final GlobalKey<FormState> _formStateKey = GlobalKey<FormState>();
  Order _order = Order();

  String? _validateItemRequired(String value) {
    return value.isEmpty ? "Item required" : null;
  }

  String? _validateItemCount(String value) {
    int? _valueAsInteger = value.isEmpty ? 0 : int.tryParse(value);
    return _valueAsInteger == 0 ? "At least one item" : null;
  }

  void _submitOrder() {
    if (_formStateKey.currentState!.validate()) {
      _formStateKey.currentState!.save();

      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
          content: Text(
              "Order Item : ${_order.item} order quantity: ${_order.quantity}")));
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          title: const Text('Form Demo'),
        ),
        body: SafeArea(
            child: Column(
          children: <Widget>[
            Form(
                key: _formStateKey,
                autovalidateMode: AutovalidateMode.always,
                
                
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Column(children: <Widget>[
      
      
                    TextFormField(
                      decoration: const InputDecoration(
                          hintText: 'coffe', labelText: "Item"),
                      validator: (value) => _validateItemCount(value!),
                      onSaved: (value) => _order.item = value!,
                    ),
      
      
                    TextFormField(
                      decoration: const InputDecoration(
                          hintText: 'coffe', labelText: "Quantity"),
                      validator: (value) => _validateItemCount(value!),
                      onSaved: (value) => _order.quantity = int.tryParse(value!),
                    ),
      
      
                    const Divider(
                      height: 72.0,
                    ),
      
                    
                    ElevatedButton(
                      onPressed: () => _submitOrder(),
                      child: const Text("Save"),
                    )
                  ]),
                ))
          ],
        )),
        // This trailing comma makes auto-formatting nicer for build methods.
      ),
    );
  }
}

class Order {
  String? item;
  int? quantity;
}
