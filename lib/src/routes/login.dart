import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Log me in'),
        ),
        body: Container(
            margin: const EdgeInsets.all(20.0),
            child: Form(
                key: _formKey,
                child: Column(
                  children: <Widget>[
                    inputField(),
                    passwordField(),
                    submitButton()
                  ],
                ))));
  }

  Widget inputField() {
    return TextFormField(
      keyboardType: TextInputType.emailAddress,
      decoration: const InputDecoration(
        labelText: 'Email address',
        hintText: 'you@mail.com',
      ),
      validator: (value) {
        if (value.contains('@')) {
          return null;
        } else {
          return 'Please enter a valid email';
        }
      },
    );
  }

  Widget passwordField() {
    return TextFormField(
        obscureText: true,
        decoration: const InputDecoration(
          labelText: 'Password',
          hintText: 'your password',
        ),
        validator: (value) {
          if (value.length < 4) {
            return 'Please enter a valid email';
          } else {
            return null;
          }
        });
  }

  Widget submitButton() {
    return const ElevatedButton(
      onPressed: () {
        final isValid = formKey.currentState.validate()
      },
      child: Text('Submit'),
    );
  }
}
