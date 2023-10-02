import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
          primarySwatch: Colors.blue,
        ),
        // home: const MyHomePage(title: 'Flutter Demo'),
        // home: const Scaffold(
        //   body: MyLayout(),
        // )
        // home: Scaffold(
        //     appBar: AppBar(
        //       backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        //       title: const Text("Contoh Text Field"),
        //     ),
        //     body: const TextField(
        //       obscureText: false,
        //       decoration: InputDecoration(
        //         border: OutlineInputBorder(),
        //         labelText: 'Nama',
        //       ),
        //     )),
        home: const MyHomePage(title: "Contoh Date Picker"));
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  // int _counter = 0;

  // void _incrementCounter() {
  //   setState(() {
  //     _counter++;
  //   });
  // }

  // @override
  // Widget build(BuildContext context) {
  //   return Scaffold(
  //     appBar: AppBar(
  //       backgroundColor: Theme.of(context).colorScheme.inversePrimary,
  //       title: Text(widget.title),
  //     ),
  //     body: Center(
  //       child: Column(
  //         mainAxisAlignment: MainAxisAlignment.center,
  //         children: <Widget>[
  //           const MyTextWidget(),
  //           Text(
  //             '$_counter',
  //             style: Theme.of(context).textTheme.headlineMedium,
  //           ),
  //         ],
  //       ),
  //     ),
  //     bottomNavigationBar: BottomAppBar(
  //         child: Container(
  //       height: 50.0,
  //     )),
  //     floatingActionButton: FloatingActionButton(
  //       onPressed: _incrementCounter,
  //       tooltip: 'Increment',
  //       child: const Icon(Icons.add),
  //     ),
  //     floatingActionButtonLocation: FloatingActionButtonLocation
  //         .centerDocked, // This trailing comma makes auto-formatting nicer for build methods.
  //   );
  // }
  DateTime selectedDate = DateTime.now();

  // Initial SelectDate FLutter
  Future<void> _selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
        context: context,
        initialDate: selectedDate,
        firstDate: DateTime(1990),
        lastDate: DateTime(2025));
    if (picked != null && picked != selectedDate) {
      setState(() {
        selectedDate = picked;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            Text("${selectedDate.toLocal()}".split(' ')[0]),
            const SizedBox(
              height: 20.0,
            ),
            ElevatedButton(
              onPressed: () => _selectDate(context),
              child: const Text('Pilih Tanggal'),
            ),
          ],
        ),
      ),
    );
  }
}

class MyTextWidget extends StatelessWidget {
  const MyTextWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const blueColor = Color(0xFF2196F3);
    return const Text("Nama saya Alfan, sedang belajar Pemrograman Mobile",
        style: TextStyle(color: blueColor, fontSize: 14),
        textAlign: TextAlign.center);
  }
}

class MyImageWidget extends StatelessWidget {
  const MyImageWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Image(image: AssetImage("assets/logo_polinema.png"));
  }
}

class MyLayout extends StatelessWidget {
  const MyLayout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ElevatedButton(
        onPressed: () {
          showAlertDialog(context);
        },
        child: const Text("Show Alert Dialog"),
      ),
    );
  }
}

showAlertDialog(BuildContext context) {
  Widget okButton = TextButton(
    child: const Text("OK"),
    onPressed: () {
      Navigator.of(context).pop();
    },
  );

  AlertDialog alert = AlertDialog(
    title: const Text("My Alert Dialog"),
    content: const Text("This is an alert message."),
    actions: [
      okButton,
    ],
  );

  showDialog(context: context, builder: (BuildContext context) => alert);
}
