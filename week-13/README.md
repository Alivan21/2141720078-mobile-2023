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
