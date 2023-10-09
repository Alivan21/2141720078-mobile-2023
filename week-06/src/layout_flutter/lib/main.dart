import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    // Tambahkan gambar di atas Container "Wisata Gunung di Batu"
    Widget imageSection = Padding(
        padding: const EdgeInsets.only(bottom: 5.0),
        child: Image.network(
          'https://asset.kompas.com/crops/AHM-NNjGN9C-Jd_SYpzp73zLgFw=/0x0:750x500/750x500/data/photo/2022/01/15/61e23536b419a.jpg',
          width: 500.0, // Sesuaikan lebar gambar sesuai kebutuhan Anda
          height: 300.0, // Sesuaikan tinggi gambar sesuai kebutuhan Anda

          fit: BoxFit
              .cover, // Sesuaikan mode tampilan gambar sesuai kebutuhan Anda
        ));

    Widget titleSection = Container(
      padding: const EdgeInsets.all(16.0),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding: const EdgeInsets.only(bottom: 8.0),
                  child: const Text(
                    'Jawa Timur Park 1',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Text(
                  'Batu, Malang, Indonesia',
                  style: TextStyle(
                    color: Colors.grey[500],
                  ),
                ),
              ],
            ),
          ),
          Icon(
            Icons.star,
            color: Colors.red[500],
          ),
          const Text('40'),
        ],
      ),
    );

    Column _buildButtonColumn(Color color, IconData icon, String label) {
      return Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(icon, color: color),
          Container(
            margin: const EdgeInsets.only(top: 8),
            child: Text(
              label,
              style: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.w400,
                color: color,
              ),
            ),
          ),
        ],
      );
    }

    Color color = Theme.of(context).primaryColor;

    Widget buttonSection = Padding(
        padding: const EdgeInsets.only(top: 8.0, bottom: 8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            _buildButtonColumn(color, Icons.call, 'CALL'),
            _buildButtonColumn(color, Icons.near_me, 'ROUTE'),
            _buildButtonColumn(color, Icons.share, 'SHARE'),
          ],
        ));

    Widget textSection = Container(
      padding: const EdgeInsets.all(20),
      child: const Text(
        'Jatim Park 1 dirancang sebagai sebuah taman bermain modern. Tempat wisata ini bisa jadi tempat melepas penat dengan lebih dari 50 wahana seru untuk berbagai kalangan usia. '
        'Nama: Alfan Olivan NIM: 2141720078',
        softWrap: true,
      ),
    );

    return MaterialApp(
      title: 'MyApp',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Layout Flutter'),
        ),
        body: ListView(
          children: [
            imageSection,
            titleSection,
            buttonSection,
            textSection
            // Tambahkan widget lain di sini sesuai kebutuhan Anda.
          ],
        ),
      ),
    );
  }
}
