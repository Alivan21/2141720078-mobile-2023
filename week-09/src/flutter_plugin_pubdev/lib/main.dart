import 'package:flutter/material.dart';
import 'package:flutter_plugin_pubdev/red_text_widget.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                color: Colors.blueAccent,
                width: 50,
                child: const RedTextWidget(
                  text: 'This is a very long text that will be truncated',
                ),
              ),
              const SizedBox(height: 20),
              Container(
                color: Colors.greenAccent,
                width: 100,
                child: const RedTextWidget(
                  text: 'This is a very long text that will be truncated',
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
