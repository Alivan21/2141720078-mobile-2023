## Repository Mobile Programming Class 2023.

Nama : Alfan Olivan

NIM : 2141720078

Tugas : Minggu 11

<div align="center">
  <h2>
  Pertemuan Kesebelas - Manajemen State
  </h2>
</div>

### Table of Contents

- [Repository Mobile Programming Class 2023.](#repository-mobile-programming-class-2023)
  - [Table of Contents](#table-of-contents)
  - [Praktikum 1](#praktikum-1)
  - [Praktikum 2](#praktikum-2)
  - [Praktikum 3](#praktikum-3)
  - [Demo Aplikasi](#demo-aplikasi)

### Praktikum 1

1. Jelaskan maksud dari langkah 4 pada praktikum tersebut! Mengapa dilakukan demikian?

- code

```dart
export 'plan.dart';
export 'task.dart';
```

- Maksud dari langkah 4 pada praktikum tersebut adalah untuk mengexport file plan.dart dan task.dart agar dapat diakses oleh file lainnya.

2. Mengapa perlu variabel plan di langkah 6 pada praktikum tersebut? Mengapa dibuat konstanta ?

   - code

   ```dart
   import '../models/data_layer.dart';
   import 'package:flutter/material.dart';

    class PlanScreen extends StatefulWidget {
      const PlanScreen({super.key});

      @override
      State createState() => _PlanScreenState();
    }

    class _PlanScreenState extends State<PlanScreen> {
      Plan plan = const Plan();

      @override
      Widget build(BuildContext context) {
       return Scaffold(
        // ganti ‘Namaku' dengan Nama panggilan Anda
        appBar: AppBar(title: const Text('Master Plan Namaku')),
        body: _buildList(),
        floatingActionButton: _buildAddTaskButton(),
       );
      }
    }
   ```

   - Variabel plan di langkah 6 pada praktikum tersebut digunakan untuk menyimpan data yang akan ditampilkan pada aplikasi. Variabel plan dibuat konstanta agar data yang disimpan tidak dapat diubah.

3. Apa kegunaan method pada Langkah 11 dan 13 dalam lifecyle state ?
   - code
     Langkah 11:

```dart
 @override
 void initState() {
 super.initState();
 scrollController = ScrollController()
   ..addListener(() {
     FocusScope.of(context).requestFocus(FocusNode());
   });
 }
```

Langkah 13:

```dart
 @override
 void dispose() {
   scrollController.dispose();
   super.dispose();
 }
```

- Kegunaan method pada Langkah 11 dan 13 dalam lifecyle state adalah untuk menginisialisasi dan menghancurkan objek yang dibuat pada saat widget diinisialisasi dan dihancurkan. Pada langkah 11, method initState() digunakan untuk menginisialisasi objek scrollController yang akan digunakan untuk mengatur scroll pada aplikasi. Pada langkah 13, method dispose() digunakan untuk menghancurkan objek scrollController yang telah dibuat pada langkah 11. Object scrollController dihancurkan agar tidak memakan memori yang tidak perlu.

### Praktikum 2

1. Jelaskan mana yang dimaksud InheritedWidget pada langkah 1 tersebut! Mengapa yang digunakan InheritedNotifier?

- code

```dart
 import 'package:flutter/material.dart';
 import '../models/data_layer.dart';

 class PlanProvider extends InheritedNotifier<ValueNotifier<Plan>> {
   const PlanProvider({super.key, required Widget child, required
    ValueNotifier<Plan> notifier})
   : super(child: child, notifier: notifier);

   static ValueNotifier<Plan> of(BuildContext context) {
    return context.
     dependOnInheritedWidgetOfExactType<PlanProvider>()!.notifier!;
   }
 }
```

- InheritedWidget pada langkah 1 tersebut digunakan untuk mengakses data yang disimpan pada PlanProvider. InheritedNotifier digunakan karena data yang disimpan pada PlanProvider akan berubah-ubah sehingga perlu diupdate secara otomatis.

2. Jelaskan maksud dari method di langkah 3 pada praktikum tersebut! Mengapa dilakukan demikian?

- code

```dart
int get completedCount => tasks
.where((task) => task.complete)
.length;

String get completenessMessage =>
'$completedCount out of ${tasks.length} tasks';
```

- Maksud dari method di langkah 3 pada praktikum tersebut adalah untuk menghitung jumlah task yang telah selesai dan menghitung persentase task yang telah selesai. Method tersebut dilakukan untuk menampilkan jumlah task yang telah selesai dan persentase task yang telah selesai pada aplikasi.

### Praktikum 3

1. Soal

![soal](/week-11/docs/soal-3.png)

- Jawaban

Fungsi dari navigator push adalah untuk berpindah dari halaman satu ke halaman lainnya. Navigator push digunakan untuk berpindah dari halaman home ke halaman add task.

### Demo Aplikasi

![demo](/week-11/docs/mobile-1.gif)
