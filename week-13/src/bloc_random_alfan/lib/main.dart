import 'package:flutter/material.dart';

import 'random_screen.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo Alfan',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: const RandomScreen());
  }
}
