import 'package:flutter/material.dart';

/*
Form validation:
        - Length
        - Not containing Username
        - Character combination (small letter, capital letter, special character)
*/

class LoginPage extends StatefulWidget {
  const LoginPage({super.key, required this.title});

  final String title;

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final GlobalKey<FormState> _formStateKey = GlobalKey<FormState>();

  final LoginData _loginData = LoginData();
  bool _passwordVisibility = false;

  String? _validateEmail(String value) {
    Pattern pattern = r'^[a-zA-Z0-9.]+@[a-zA-Z0-9]+\.[a-zA-Z]+';
    RegExp regex = RegExp(pattern as String);
    return !regex.hasMatch(value) ? "Invalid Email format" : null;
  }

  String? _validatePassword(String value) {
    if (value.length < 8) {
      return "Password should be longer than 8 characters";
    } else if (_loginData.email != null && value.contains(_loginData.email!)) {
      return "Password can't contain email or username";
    }

    Pattern pattern = r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~])';
    RegExp regex = RegExp(pattern as String);
    return !regex.hasMatch((value))
        ? "Password must have at least one upper case, one lower case, one number and one special character"
        : null;
  }

  void _togglePasswordVisibility() {
    _passwordVisibility = !_passwordVisibility;
  }

  void _loginUser() {
    if (_formStateKey.currentState!.validate()) {
      _formStateKey.currentState!.save();
      // ScaffoldMessenger.of(context).showSnackBar(SnackBar(
      //   content: Text("Logged In User with email: ${_loginData.email}"),
      //   backgroundColor: Colors.green,
      // ));
      showModalBottomSheet(
        context: context,
        builder: (context) {
          return Container(
            padding: const EdgeInsets.all(16.0),
            decoration: BoxDecoration(
                color: Colors.green.shade600,
                borderRadius: const BorderRadius.all(Radius.circular(20.0))),
            child: Text(
              "Logged In User with email: ${_loginData.email}",
              style: const TextStyle(
                color: Colors.white,
                fontSize: 18.0,
              ),
            ),
          );
        },
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.inverseSurface,
          title: Text(
            widget.title,
            style: const TextStyle(color: Colors.black),
          ),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Form(
                  key: _formStateKey,
                  autovalidateMode: AutovalidateMode.always,
                  child: Padding(
                    padding: const EdgeInsets.all(0),
                    child: SizedBox(
                        width: 400,
                        child: Column(children: <Widget>[
                          TextFormField(
                            decoration: const InputDecoration(
                                hintText: "user@example.com",
                                labelText: "Email"),
                            validator: (value) => _validateEmail(value!),
                            onSaved: (value) => _loginData.email = value,
                          ),
                          TextFormField(
                            obscureText: _passwordVisibility,
                            decoration: InputDecoration(
                                hintText: "Enter your password",
                                labelText: "Password",
                                suffixIcon: IconButton(
                                    onPressed: () =>
                                        {setState(_togglePasswordVisibility)},
                                    icon: Icon(_passwordVisibility
                                        ? Icons.visibility
                                        : Icons.visibility_off))),
                            validator: (value) => _validatePassword(value!),
                            onSaved: (value) => _loginData.password = value,
                          ),
                          const Divider(
                            height: 40,
                          ),
                          ElevatedButton(
                            onPressed: () => _loginUser(),
                            child: const Text("Login"),
                          )
                        ])),
                  ))
            ],
          ),
        ));
  }
}

class LoginData {
  String? email;
  String? password;
}
