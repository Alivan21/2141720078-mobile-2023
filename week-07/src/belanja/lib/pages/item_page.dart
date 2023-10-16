import 'package:flutter/material.dart';

class ItemPage extends StatelessWidget {
  const ItemPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Item Page'),
        backgroundColor: Colors.green,
      ),
      body: const Center(
        child: Text('Item Page'),
      ),
    );
  }
}
