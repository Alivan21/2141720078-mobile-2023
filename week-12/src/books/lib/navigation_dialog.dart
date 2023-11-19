import 'package:flutter/material.dart';

class NavigationDialogScreen extends StatefulWidget {
  const NavigationDialogScreen({Key? key}) : super(key: key);

  @override
  State<NavigationDialogScreen> createState() => _NavigationDialogScreenState();
}

class _NavigationDialogScreenState extends State<NavigationDialogScreen> {
  Color color = Colors.purple.shade700;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: color,
      appBar: AppBar(
        title: const Text('Navigation Dialog Screen Alfan'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            _showColorDialog(context);
          },
          child: const Text('Change Color'),
        ),
      ),
    );
  }

  Future _showColorDialog(BuildContext context) async {
    await showDialog(
        barrierDismissible: false,
        context: context,
        builder: (context) {
          return AlertDialog(
            title: const Text('Very Important Question'),
            content: const Text('Please choose a color'),
            actions: [
              TextButton(
                onPressed: () {
                  color = Colors.red.shade700;
                  Navigator.pop(context, color);
                },
                child: const Text('Red'),
              ),
              TextButton(
                onPressed: () {
                  color = Colors.green.shade700;
                  Navigator.pop(context, color);
                },
                child: const Text('Green'),
              ),
              TextButton(
                onPressed: () {
                  color = Colors.blue.shade700;
                  Navigator.pop(context, color);
                },
                child: const Text('Blue'),
              ),
              TextButton(
                onPressed: () {
                  color = Colors.purple.shade700;
                  Navigator.pop(context, color);
                },
                child: const Text('Purple'),
              ),
            ],
          );
        });
    setState(() {});
  }
}
