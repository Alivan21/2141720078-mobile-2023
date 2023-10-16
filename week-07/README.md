## Repository Mobile Programming Class 2023.

Nama : Alfan Olivan

NIM : 2141720078

Tugas : Minggu 8

<div align="center">
  <h2>
  Pertemuan Ketujuh - Layout dan Navigasi
  </h2>
</div>

### Table of Contents

- [Repository Mobile Programming Class 2023.](#repository-mobile-programming-class-2023)
  - [Table of Contents](#table-of-contents)
  - [Praktikum 1 \& Tugas Praktikum - Membangun Navigasi](#praktikum-1--tugas-praktikum---membangun-navigasi)

### Praktikum 1 & Tugas Praktikum - Membangun Navigasi

- Code

a. main.dart

```dart
import 'package:flutter/material.dart';

import 'pages/home_page.dart';
import 'pages/item_page.dart';

void main() {
  runApp(MaterialApp(
    initialRoute: '/',
    routes: {
      '/': (context) => HomePage(),
      '/item': (context) => const ItemPage(),
    },
  ));
}

```

b. home_page.dart

```dart
import 'package:belanja/models/item.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);

  final List<Item> items = [
    Item(
        name: 'Sugar',
        price: 5000,
        photoUrl:
            'https://images.unsplash.com/photo-1628619876503-2db74e724757?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1820&q=80',
        stock: 5,
        rating: 4.2),
    Item(
        name: 'Burger',
        price: 2000,
        photoUrl:
            'https://images.unsplash.com/photo-1568901346375-23c9450c58cd?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1899&q=80',
        stock: 10,
        rating: 4),
    Item(
        name: 'Steak',
        price: 4000,
        photoUrl:
            'https://images.unsplash.com/photo-1600891964092-4316c288032e?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=2070&q=80',
        stock: 2,
        rating: 4.5),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Page'),
        backgroundColor: Colors.green,
      ),
      body: Container(
        margin: const EdgeInsets.all(8),
        child: Column(
          children: [
            const Text(
              'Nama: Alfan Olivan\nNim : 2141720078', // Your desired text here
              style: TextStyle(
                fontSize: 20, // Adjust the font size as needed
                fontWeight: FontWeight.bold, // Add styling as needed
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(
                height: 16), // Add some spacing between the text and ListView
            Expanded(
              child: ListView.builder(
                padding: const EdgeInsets.all(8),
                itemCount: items.length,
                itemBuilder: (context, index) {
                  final item = items[index];
                  return InkWell(
                    onTap: () =>
                        Navigator.pushNamed(context, '/item', arguments: item),
                    child: Card(
                      child: Container(
                        margin: const EdgeInsets.all(8),
                        child: Row(
                          children: [
                            Expanded(child: Text(item.name)),
                            Expanded(
                              child: Text(
                                'Rp ${item.price.toString()}',
                                textAlign: TextAlign.end,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

```

b. item_page.dart

```dart
import 'package:flutter/material.dart';

import '../models/item.dart';

class ItemPage extends StatelessWidget {
  const ItemPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final itemArgs = ModalRoute.of(context)!.settings.arguments as Item;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Item Page'),
        backgroundColor: Colors.green,
        actions: [
          IconButton(
            icon: const Icon(Icons.arrow_back),
            onPressed: () {
              // Navigate back to the main page when the back button is pressed
              Navigator.of(context).pop();
            },
          ),
        ],
      ),
      body: GridView.builder(
        padding: const EdgeInsets.all(10),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 0.7,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
        ),
        itemCount: itemArgs.stock,
        itemBuilder: (BuildContext context, int index) {
          final item = itemArgs;
          return Card(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: Image.network(
                    item.photoUrl,
                    fit: BoxFit.cover,
                  ),
                ),
                const SizedBox(height: 10),
                Text(
                  'Stock: ${item.stock}',
                  style: const TextStyle(fontSize: 16),
                ),
                const SizedBox(height: 5),
                Row(
                  children: [
                    const Icon(Icons.star, color: Colors.yellow),
                    const SizedBox(width: 5),
                    Text(
                      '${item.rating}',
                      style: const TextStyle(fontSize: 16),
                    ),
                  ],
                ),
                const SizedBox(height: 10),
              ],
            ),
          );
        },
      ),
    );
  }
}
```

- Output

  a. Home Page

  ![Output-1!](/week-07/docs/1.jpeg "Output-1")

  b. Detail 1 Page

  ![Output-2!](/week-07/docs/2.jpeg "Output-2")

  c. Detail 2 Page

  ![Output-3!](/week-07/docs/3.jpeg "Output-3")

  d. Detail 3 Page

  ![Output-4!](/week-07/docs/4.jpeg "Output-4")
