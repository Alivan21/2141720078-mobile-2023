## Repository Mobile Programming Class 2023.

Nama : Alfan Olivan

NIM : 2141720078

Tugas : Minggu 9

<div align="center">
  <h2>
  Pertemuan Kesembilan - Manajemen Plugin
  </h2>
</div>

### Table of Contents

- [Repository Mobile Programming Class 2023.](#repository-mobile-programming-class-2023)
  - [Table of Contents](#table-of-contents)
  - [Praktikum Menerapkan Plugin](#praktikum-menerapkan-plugin)
  - [Tugas Praktikum](#tugas-praktikum)

### Praktikum Menerapkan Plugin

- Code

a. main.dart

```dart
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
                child: const Text(
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
```

b. red_text_widget.dart

```dart
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

class RedTextWidget extends StatelessWidget {
  final String text;
  const RedTextWidget({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AutoSizeText(
      text,
      style: const TextStyle(
        color: Colors.red,
        fontSize: 24,
      ),
      maxLines: 2,
      overflow: TextOverflow.ellipsis,
    );
  }
}

```

- Output
  ![Output-1!](/week-09/docs/01.png "Output-1")

### Tugas Praktikum

1. Jelaskan maksud dari langkah 2 pada praktikum tersebut!

   Langkah 2 pada praktikum tersebut adalah menambahkan plugin auto_size_text pada pubspec.yaml. Plugin ini digunakan untuk mengatur ukuran teks secara otomatis sesuai dengan ukuran widget yang digunakan.

2. Jelaskan maksud dari langkah 5 pada praktikum tersebut!

   Langkah 5 pada praktikum tersebut adalah menambahkan variable text pada class RedTextWidget. Variable text ini digunakan untuk menampung teks yang akan ditampilkan pada widget.

3. Pada langkah 6 terdapat dua widget yang ditambahkan, jelaskan fungsi dan perbedaannya!

   Pada langkah 6 terdapat dua widget yang ditambahkan yaitu AutoSizeText dan Text. Kedua widget ini digunakan untuk menampilkan teks pada widget. Perbedaannya adalah AutoSizeText digunakan untuk mengatur ukuran teks secara otomatis sesuai dengan ukuran widget yang digunakan, sedangkan Text tidak mengatur ukuran teks secara otomatis.

4. Jelaskan maksud dari tiap parameter yang ada di dalam plugin auto_size_text berdasarkan tautan pada dokumentasi!

   - text: Teks yang akan ditampilkan pada widget.
   - style: Style teks yang akan ditampilkan pada widget.
   - maxLines: Jumlah maksimal baris yang akan ditampilkan pada widget.
   - overflow: Teks yang akan ditampilkan jika melebihi jumlah maksimal baris yang ditampilkan pada widget.
   - minFontSize: Ukuran minimal teks yang akan ditampilkan pada widget.
   - maxFontSize: Ukuran maksimal teks yang akan ditampilkan pada widget.
   - stepGranularity: Ukuran langkah yang digunakan untuk mengatur ukuran teks pada widget.
   - presetFontSizes: Ukuran teks yang akan ditampilkan pada widget.
   - group: Group yang digunakan untuk mengatur ukuran teks pada widget.
   - textAlign: Penataan teks yang akan ditampilkan pada widget.
   - textDirection: Arah teks yang akan ditampilkan pada widget.
   - textScaleFactor: Faktor skala teks yang akan ditampilkan pada widget.
   - semanticsLabel: Label semantik yang digunakan untuk mengatur ukuran teks pada widget.
   - wrapWords: Mengatur apakah teks yang akan ditampilkan pada widget akan dibungkus atau tidak.
   - locale: Digunakan untuk memilih font ketika karakter Unicode yang sama dapat dirender secara berbeda, bergantung pada lokalnya.
