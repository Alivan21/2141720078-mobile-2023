## Repository Mobile Programming Class 2023.

Nama : Alfan Olivan

NIM : 2141720078

Tugas : Minggu 12

<div align="center">
  <h2>
  Pertemuan Keduabelas - Pemograman Asyncronous
  </h2>
</div>

### Table of Contents

- [Repository Mobile Programming Class 2023.](#repository-mobile-programming-class-2023)
  - [Table of Contents](#table-of-contents)
  - [Praktikum 1](#praktikum-1)
  - [Pratiukum 2](#pratiukum-2)
  - [Praktikum 3](#praktikum-3)

### Praktikum 1

1. Tambahkan nama panggilan Anda pada title app sebagai identitas hasil pekerjaan Anda.

```dart
import 'package:flutter/material.dart';
import 'dart:async';
import 'package:http/http.dart';
import 'package:http/http.dart' as http;

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Future App Alfan',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: const FuturePage(),
    );
  }
}
```

2. Carilah judul buku favorit Anda di Google Books, lalu ganti ID buku pada variabel path di kode tersebut.

![Gambar 1](/week-12/docs/soal1.2.png)

3. Jelaskan maksud kode langkah 5 tersebut terkait substring dan catchError!

```dart
class _FuturePageState extends State<FuturePage> {
  String result = '';
  bool isLoading = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Back from the Future'),
      ),
      body: Center(
        child: Column(children: [
          const Spacer(),
          ElevatedButton(
            child: const Text('GO!'),
            onPressed: () {
              setState(() {
                isLoading = true;
              });
              Future.delayed(const Duration(seconds: 1)).then(((value) {
                getData().then((value) {
                  result = value.body.toString().substring(0, 450);
                  setState(() {
                    isLoading = false;
                  });
                }).catchError((e) {
                  result = "An error occured $e";
                  setState(() {
                    isLoading = false;
                  });
                });
              }));
            },
          ),
          const Spacer(),
          isLoading ? CircularProgressIndicator() : Text(result),
          const Spacer(),
        ]),
      ),
    );
  }

  Future<Response> getData() async {
    const authority = 'www.googleapis.com';
    const path = '/books/v1/volumes/_i6bDeoCQzsC';
    Uri url = Uri.https(authority, path);
    return await http.get(url);
  }
}
```

Maksud dari kode tersebut adalah untuk menampilkan data dari API Google Books. Substring digunakan untuk membatasi jumlah karakter yang ditampilkan. Sedangkan catchError digunakan untuk menampilkan pesan error jika terjadi error.

Demo Aplikasi

![Gambar 2](/week-12/docs/soal1.3.gif)

### Pratiukum 2

4. Jelaskan maksud kode langkah 1 dan 2 tersebut!

```dart
Future<int> returnOneAsync() async {
  await Future.delayed(const Duration(seconds: 3));
  return 1;
}

Future<int> returnTwoAsync() async {
  await Future.delayed(const Duration(seconds: 3));
  return 2;
}

Future<int> returnThreeAsync() async {
  await Future.delayed(const Duration(seconds: 3));
  return 3;
}
```

Kode di atas adalah contoh implementasi fungsi-fungsi asynchronous dalam Dart menggunakan Future. Setiap fungsi (returnOneAsync, returnTwoAsync, dan returnThreeAsync) mengembalikan nilai integer setelah mengalami penundaan selama 3 detik menggunakan Future.delayed. Masing-masing fungsi mengembalikan nilai yang berbeda (1, 2, dan 3). Dengan kata lain, ketika fungsi-fungsi ini dipanggil, mereka akan mengembalikan nilai setelah waktu tertentu tanpa menghentikan eksekusi program secara keseluruhan, karena mereka bekerja secara asynchronous.

Demo Aplikasi

![Gambar 3](/week-12/docs/soal2.4.gif)

### Praktikum 3

5. Jelaskan maksud kode langkah 2 tersebut!

- completer dideklarasikan sebagai objek Completer, yang bertanggung jawab untuk menangani penyelesaian (completion) dari suatu Future.
- Fungsi getNumber menginisialisasi completer dan kemudian memanggil fungsi calculate(). Fungsi ini mengembalikan completer.future, yang merupakan objek Future yang akan diselesaikan di masa depan.
- Fungsi calculate adalah fungsi asynchronous yang melakukan penundaan selama 5 detik menggunakan Future.delayed dan kemudian menyelesaikan completer dengan nilai 42.

Demo Aplikasi

![Gambar 4](/week-12/docs/soal3.5.gif)

6. Jelaskan maksud langkah 2 dengan langkah 5-6 tersebut!

Kode di atas merupakan modifikasi dari kode sebelumnya dengan penambahan penanganan error. Fungsi calculate kini berada dalam blok try-catch, di mana jika terjadi kesalahan (error), completer akan diselesaikan dengan error tersebut. Pada bagian onPressed, hasil dari fungsi getNumber() di-handle menggunakan then untuk menangani hasil sukses dan catchError untuk menangani kesalahan. Jika berhasil, nilai result diupdate dengan nilai yang diterima, dan jika terjadi kesalahan, nilai result diatur sebagai 'An error occurred'.

Demo Aplikasi
![Gambar 5](/week-12/docs/soal3.5.gif)
