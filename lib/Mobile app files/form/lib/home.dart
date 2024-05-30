import 'package:flutter/material.dart';

/*
Form validation:
        - Length
        - Not containing Username
        - Character combination (small letter, capital letter, special character)
*/
class Home extends StatefulWidget {
  const Home({super.key, required this.title});

  final String title;

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final GlobalKey<FormState> _formStateKey = GlobalKey<FormState>();
  final Order _order = Order();

  String? validateItemRequired(String value) {
    return value.isEmpty ? "Item required" : null;
  }

  //Every value coming from a form input value is a string so we have to cast them manually.
  String? validateItemCount(String value) {
    int? valueInteger = value.isEmpty ? 0 : int.tryParse(value);
    return valueInteger == 0 ? "At least one item is required" : null;
  }

  void _submitOrder() {
    if (_formStateKey.currentState!.validate()) {
      _formStateKey.currentState!.save();
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
          content: Text(
              "Ordered Item: ${_order.item} Order quantity: ${_order.quantity}")));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text("Form demo"),
      ),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            //Forms have to be unique in the application. Therefore, they need to have a key constant global key attribute in the widget class.
            Form(
                key: _formStateKey,
                autovalidateMode: AutovalidateMode.always,
                // The autovalidateMode property in Flutter's form fields specifies when to automatically validate the input.
                // Setting it to AutovalidateMode.
                //always ensures that the input is validated continuously as the user interacts with the form field.
                child: Padding(
                  padding: const EdgeInsets.all(24.0),
                  child: Column(
                    children: <Widget>[
                      TextFormField(
                        decoration: const InputDecoration(
                            hintText: "Coffee", labelText: "Item"),
                        validator: (value) => validateItemRequired(value!),
                        onSaved: (value) => _order.item = value,
                      ),
                      TextFormField(
                        decoration: const InputDecoration(
                            hintText: "2", labelText: "Quantity"),
                        validator: (value) => validateItemCount(value!),
                        onSaved: (value) =>
                            _order.quantity = int.tryParse(value!),
                      ),
                      const Divider(height: 10),
                      ElevatedButton(
                        onPressed: () => _submitOrder(),
                        child: const Text("save"),
                      )
                    ],
                  ),
                ))
          ],
        ),
      ),
    );
  }
}

class Order {
  String? item;
  int? quantity;
}
