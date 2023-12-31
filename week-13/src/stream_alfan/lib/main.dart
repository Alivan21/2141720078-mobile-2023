import 'package:flutter/material.dart';
import 'stream.dart';
import 'dart:async';
import 'dart:math';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Stream Alfan',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const StreamHomePage(),
    );
  }
}

class StreamHomePage extends StatefulWidget {
  const StreamHomePage({super.key});

  @override
  State<StreamHomePage> createState() => _StreamHomePageState();
}

class _StreamHomePageState extends State<StreamHomePage> {
  Color bgColor = Colors.blueGrey;
  late ColorStream colorStream;

  int lastNumber = 0;
  late StreamController numberStreamController;
  late NumberStream numberStream;

  late StreamTransformer transformer;

  late StreamSubscription subscription;

  late StreamSubscription subscription2;
  String values = "";

  @override
  void initState() {
    numberStream = NumberStream();
    numberStreamController = numberStream.controller;
    Stream stream = numberStreamController.stream.asBroadcastStream();

    subscription = stream.listen(
      (event) {
        setState(() {
          lastNumber = event;
        });
      },
      onError: (err) {
        setState(() {
          lastNumber = -1;
        });
      },
      onDone: () {
        print('OnDone was called');
      },
    );

    subscription2 = stream.listen((event) {
      setState(() {
        values += '$event - ';
      });
    });

    super.initState();
  }

  @override
  void dispose() {
    numberStreamController.close();
    subscription.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Stream Alfan'),
        ),
        body: SizedBox(
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text('Last Number: $lastNumber'),
              Text('Values: $values'),
              ElevatedButton(
                onPressed: () {
                  addRandomNumber();
                },
                child: const Text('Add Random Number'),
              ),
              ElevatedButton(
                onPressed: () {
                  stopStream();
                },
                child: const Text('Stop Subscription'),
              ),
            ],
          ),
        ));
  }

  void changeColor() async {
    colorStream.getColors().listen((Color color) {
      setState(() {
        bgColor = color;
      });
    });
  }

  void addRandomNumber() {
    Random random = Random();
    int randomNumber = random.nextInt(10);
    if (!numberStreamController.isClosed) {
      numberStream.addNumberToSink(randomNumber);
    } else {
      setState(() {
        lastNumber = -1;
      });
    }
  }

  void stopStream() {
    numberStreamController.close();
  }
}
