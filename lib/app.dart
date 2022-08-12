import 'package:flutter/material.dart';
import './src/routes/login.dart';
import 'package:pics/src/routes/home.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      // home: Home(),
      home: Home(),
    );
  }
}
