## Repository Mobile Programming Class 2023.

Nama : Alfan Olivan

NIM : 2141720078

Tugas : Minggu 13

<div align="center">
  <h2>
  Pertemuan Ketigabelas - Lanjutan State Management dengan Stream
  </h2>
</div>

### Table of Contents

- [Repository Mobile Programming Class 2023.](#repository-mobile-programming-class-2023)
  - [Table of Contents](#table-of-contents)
  - [Praktikum 1](#praktikum-1)
  - [Praktikum 2](#praktikum-2)
  - [Praktikum 3](#praktikum-3)
  - [Praktikum 4](#praktikum-4)
  - [Praktikum 5](#praktikum-5)
  - [Praktikum 6](#praktikum-6)
  - [Praktikum 7](#praktikum-7)

### Praktikum 1

3. Jelaskan fungsi keyword yield\* pada kode tersebut! dan Apa maksud isi perintah kode tersebut?

   ```dart
    Stream<Color> getColors() async* {
    yield* Stream.periodic(const Duration(seconds: 1), (int t) {
      int index = t % colors.length;
      return colors[index];
    });
   }
   ```

   Jawab :

   - yield\* digunakan untuk mengembalikan nilai dari sebuah fungsi stream.
   - Maksud dari kode tersebut adalah untuk mengembalikan nilai dari fungsi stream yang berupa warna secara berulang setiap 1 detik.

4. Demo Aplikasi

![Gambar1](/week-13/docs/1.4.gif)

5. Jelaskan perbedaan menggunakan listen dan await for

   Jawab :

   - await for digunakan untuk menunggu nilai dari sebuah stream.
   - listen digunakan untuk mendapatkan nilai dari sebuah stream.

### Praktikum 2

6. Jelaskan maksud kode langkah 8 dan 10 tersebut!

   Langkah 8:

   ```dart
     @override
     void initState() {
       numberStream = NumberStream();
       numberStreamController = numberStream.controller;
       Stream stream = numberStreamController.stream;
       stream.listen((event) {
         setState(() {
           lastNumber = event;
         });
       });
       super.initState();
     }
   ```

   Langkah 10:

   ```dart
   void addRandomNumber() {
     Random random = Random();
     int myNum = random.nextInt(10);
     numberStream.addNumberToSink(myNum);
   }
   ```

   Jawab :

   - Langkah 8 digunakan untuk mendapatkan nilai dari stream yang dihasilkan oleh controller saat initialisasi widget.
   - Langkah 10 digunakan untuk menambahkan nilai random dari angka 0-10 ke dalam stream.

   Demo Aplikasi

   ![Gambar2](/week-13/docs/2.6.gif)

7. Jelaskan maksud kode langkah 13 sampai 15 tersebut!

   Langkah 13:

   ```dart
    addError() {
      controller.sink.addError('error');
    }
   ```

   Langkah 14:

   ```dart
     @override
     void initState() {
       numberStream = NumberStream();
       numberStreamController = numberStream.controller;
       Stream stream = numberStreamController.stream;
       stream.listen((event) {
         setState(() {
           lastNumber = event;
         });
       }).onError((err) {
         setState(() {
           lastNumber = -1;
         });
       });
       super.initState();
     }
   ```

   Langkah 15:

   ```dart
   void addRandomNumber() {
      Random random = Random();
      // int randomNumber = random.nextInt(10);
      // numberStream.addNumberToSink(randomNumber);
      numberStream.addError();
    }
   ```

   Jawab:

   - Langkah 13 adalah untuk menambahkan fungsi error ke dalam stream.
   - Langkah 14 adalah untuk mendapatkan nilai dari stream yang dihasilkan oleh controller saat initialisasi widget dan menangkap error yang terjadi.
   - Langkah 15 adalah untuk merubah fungsi addRandomNumber agar terjadi error.

### Praktikum 3

8. Jelaskan maksud kode langkah 1-3 tersebut!

   Langkah 1:

   ```dart
   late StreamTransformer transformer;
   ```

   Langkah 2:

   ```dart
    transformer = StreamTransformer<int, int>.fromHandlers(
        handleData: (int value, EventSink<int> sink) {
      sink.add(value * 10);
    }, handleError: (error, stackTrace, EventSink<int> sink) {
      sink.add(-1);
    }, handleDone: (EventSink<int> sink) {
      sink.close();
    });
   ```

   Langkah 3:

   ```dart
   stream.transform(transformer).listen((event) {
      setState(() {
        lastNumber = event;
      });
    }).onError((err) {
      setState(() {
        lastNumber = -1;
      });
    });
   super.initState();
   ```

   Jawab:

   - Langkah 1 adalah untuk mendeklarasikan sebuah stream transformer.
   - Langkah 2 adalah untuk membuat sebuah stream transformer yang berfungsi untuk mengubah nilai stream menjadi nilai yang dikalikan 10.
   - Langkah 3 adalah untuk mendapatkan nilai dari stream yang dihasilkan oleh controller saat initialisasi widget dan menangkap error yang terjadi.

   Demo Aplikasi

   ![Gambar3](/week-13/docs/3.8.gif)

### Praktikum 4

9. Jelaskan maksud kode langkah 2, 6 dan 8 tersebut!

   Langkah 2:

   ```dart
   @override
   void initState() {
   numberStream = NumberStream();
   numberStreamController = numberStream.controller;
   Stream stream = numberStreamController.stream;
   subscription = stream.listen((event) {
     setState(() {
       lastNumber = event;
     });
   });
   subscription.onError((err) {
     setState(() {
       lastNumber = -1;
     });
   });
   subscription.onDone(() {
     print('OnDone was called');
   });
   super.initState();
   }
   ```

   Langkah 6:

   ```dart
   @override
   void dispose() {
    numberStreamController.close();
    subscription.cancel();
    super.dispose();
   }
   ```

   Langkah 8:

   ```dart
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
   ```

   Jawab:

   - Langkah 2 adalah untuk mendapatkan nilai dari stream yang dihasilkan oleh controller saat initialisasi widget dan menangkap error dan done yang terjadi.
   - Langkah 6 adalah untuk menutup controller dan menghentikan subscription.
   - Langkah 8 adalah untuk menambahkan nilai random dari angka 0-10 ke dalam stream jika controller belum ditutup, jika controller sudah ditutup maka akan menampilkan nilai -1.

   Demo Aplikasi

   ![Gambar4](/week-13/docs/4.9.gif)

### Praktikum 5

10. Jelaskan mengapa error itu bisa terjadi ?

    Jawab:

    - Karena terdapat 2 subscription yang berjalan secara bersamaan.

11. Jelaskan mengapa hal itu bisa terjadi ?

    Code:

    ```dart
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
    ```

    Jawab:

    - Karena saat menekan tombol Add New Number maka akan men-trigger subsription yang pertama dan kedua secara bersamaan sehingga nilai dari lastNumber dan values akan berubah secara bersamaan.

    Demo Aplikasi

    ![Gambar5](/week-13/docs/5.11.gif)

### Praktikum 6

12. Jelaskan maksud kode pada langkah 3 dan 7 !

    Langkah 3:

    ```dart
    import 'dart:math';

    class NumberStream {
      Stream<int> getNumbers() async* {
        yield* Stream.periodic(Duration(seconds: 1), (int a) {
          Random random = Random();
          int randomNumber = random.nextInt(100);
          return randomNumber;
        });
      }
    }
    ```

    Langkah 7:

    ```dart
    @override
    Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Stream Alfan'),
      ),
      body: StreamBuilder(
        stream: numberStream,
        initialData: 0,
        builder: (context, snapshot) {
          if (snapshot.hasError) {
            return const Center(
              child: Text('Error'),
            );
          } else if (snapshot.hasData) {
            return Center(
              child: Text(
                snapshot.data.toString(),
                style: const TextStyle(fontSize: 72),
              ),
            );
          } else {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }
        },
      ),
    );
    }
    ```

    Jawab:

    - Langkah 3 adalah untuk mendapatkan nilai dari stream yang dihasilkan oleh fungsi getNumbers.
    - Langkah 7 adalah untuk mendapatkan nilai dari stream yang dihasilkan oleh fungsi getNumbers dan menampilkan nilai tersebut ke dalam widget Text.

    Demo Aplikasi

    ![Gambar6](/week-13/docs/6.12.gif)

### Praktikum 7

13. Jelaskan maksud praktikum ini ! Dimanakah letak konsep pola BLoC-nya ?

    Jawab:

    - main.dart:

      - Fungsi main merupakan entry point dari aplikasi Flutter. Di dalamnya, MainApp dijalankan menggunakan runApp.
      - Kelas MainApp adalah turunan dari StatelessWidget dan merupakan tampilan utama aplikasi.Di dalam MainApp, terdapat pengaturan dasar aplikasi menggunakan MaterialApp, dengan judul dan tema tertentu.
      - Halaman utama aplikasi diatur menggunakan widget RandomScreen.

    - random_screen.dart:

      - Kelas RandomScreen adalah turunan dari StatefulWidget dan digunakan untuk menampilkan antarmuka pengguna (UI) untuk menampilkan angka acak.
      - Di dalam RandomScreen, terdapat \_RandomScreenState, yang merupakan state untuk widget ini.
      - Pada build method, terdapat StreamBuilder yang mendengarkan perubahan pada stream \_bloc.randomNumber. Jika ada perubahan, teks yang menampilkan angka acak akan diperbarui.
      - Terdapat juga FloatingActionButton yang, ketika ditekan, akan memicu pembangkitan angka acak melalui \_bloc.generateRandomNumber.

    - random_bloc.dart:
      - Kelas RandomNumberBloc berperan sebagai BLoC untuk mengelola logika bisnis terkait angka acak.
      - Dalam konstruktor RandomNumberBloc, terdapat inisialisasi controller yang mendengarkan peristiwa pembangkitan angka acak dan kemudian mengirimkan angka tersebut ke dalam stream \_randomNumberController.
      - Metode dispose digunakan untuk menutup controller stream ketika tidak diperlukan lagi, menghindari kebocoran memori.
      - Terdapat dua controller, yaitu \_generateRandomController (untuk menerima peristiwa pembangkitan angka acak) dan \_randomNumberController (untuk mengirim angka acak ke UI).
      - Melalui getter, widget RandomScreen dapat mengakses sink untuk mengirim peristiwa pembangkitan angka acak dan stream untuk mendengarkan angka acak yang dihasilkan.

    Konsep pola BLoC terlihat pada pemisahan logika bisnis (kelas RandomNumberBloc) dari tampilan (kelas RandomScreen) dan bagaimana mereka berinteraksi melalui stream dan sink. Ini membantu menjaga kode yang bersih dan mudah di-maintain.

    Demo Aplikasi

    ![Gambar7](/week-13/docs/7.13.gif)
