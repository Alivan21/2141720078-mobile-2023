## Repository Mobile Programming Class 2023.

Nama : Alfan Olivan

NIM : 2141720078

Tugas : Minggu 3

<div align="center">
  <h2>Pertemuan Ketiga - Pengantar Bahasa Pemrograman Dart Bagian 3</h2>
</div>

## Praktikum 1 - Control Flow Statements

Kode:

```dart
   String test = "test2";
   if (test == "test1") {
      print("Test1");
   } else If (test == "test2") {
      print("Test2");
   } Else {
      print("Something else");
   }

   if (test == "test2") print("Test2 again");
```

Terdapat error pada kode diatas, yaitu pada bagian `Else If` yang seharusnya ditulis menjadi `else if` atau `elseIf` tanpa spasi, begitu juga dengan `Else` yang seharusnya ditulis menjadi `else`. berikut adalah contoh kode yang benar :

```dart
   String test = "test2";
   if (test == "test1") {
    print("Test1");
   } else if (test == "test2") {
    print("Test2");
   } else {
    print("Something else");
   }
```

jika berhasil akan menghasilkan output seperti berikut :

![Output-1!](/week-03/docs/praktikum-01_1.png "Output-1")

Kode diatas digunakan untuk mencek jika variabel test == "test1" maka akan mencetak Test1 dan, jika test == "test2" maka akan mencetak Test2 dan jika tidak ada yang sama maka akan mencetak Something else.

Tambahkan kode berikut pada kode diatas :

```dart
  String test = "true";
  if (test) {
    print("Kebenaran");
  }
```

Jika di run maka terdapat error karena variabel test telah dideklarasikan dengan tipe data bertipe string sehingga harus menggunakan variabel baru dengan nama test2, lalu untuk if statement harus bertipe boolean. Berikut adalah contoh kode yang benar :

```dart
  bool test2 = true;
  if (test2) {
    print("Kebenaran");
  }
```

jika berhasil akan menghasilkan output seperti berikut :

![Output-2!](/week-03/docs/praktikum-01_2.png "Output-2")

## Praktikum 2: Menerapkan Perulangan "while" dan "do-while"

Kode:

```dart
  while (counter < 33) {
    print(counter);
    counter++;
  }
```

Pada kode tersebut terdapat error yaitu variable counter belum dideklarasikan dan diinisialisasikan. Kode yang benar adalah sebagai berikut :

```dart
  int counter = 0;
  while (counter < 33) {
    print(counter);
    counter++;
  }
```

Kode diatas digunakan untuk mencetak angka dari 0 sampai 32. Jika berhasil akan menghasilkan output seperti berikut :

![Output-3!](/week-03/docs/praktikum-02_1.png "Output-3")

Tambahkan kode berikut pada kode diatas :

```dart
  do {
    print(counter);
    counter++;
  } while (counter < 77);
```

Kode diatas digunakan untuk mencetak angka dari 33 sampai 76. Jika berhasil akan menghasilkan output seperti berikut :

![Output-4!](/week-03/docs/praktikum-02_2.png "Output-4")

## Praktikum 3: Menerapkan Perulangan "for" dan "break-continue"

Kode :

```dart
  for (Index = 10; index < 27; index) {
    print(Index);
  }
```

Pada kode tersebut terdapat error yaitu variable index belum dideklarasikan dan diinisialisasikan serta terdapat salah penamaan variabel index, lalu kode diatas juga akan mencektak angka 10 secara terus menerus sehingga untuk menghindari hal tersebut perlu ditambahkan "index++". Kode yang benar adalah sebagai berikut :

```dart
  for (int index = 10; index < 27; index++) {
    print(index);
  }
```

Kode diatas digunakan untuk mencetak angka dari 10 sampai 26. Jika berhasil akan menghasilkan output seperti berikut :

![Output-5!](/week-03/docs/praktikum-03_1.png "Output-5")

Tambahkan kode berikut pada kode diatas :

```dart
  If (Index == 21) break;
  Else If (index > 1 || index < 7) continue;
  print(index);
```

Terdapat error pada kode diatas yaitu pada variabel Index yang seharusnya ditulis menjadi index, begitu juga dengan else if yang seharusnya ditulis menjadi else if atau elseif tanpa spasi. Kode yang benar adalah sebagai berikut :

```dart
  if (index == 21) break;
  else if (index > 1 || index < 7) continue;
  print(index);
```

Kode diatas tidak akan menampilkan apa apa karena jika index bernilai lebih dari 1 atau kurang dari 7 maka akan di skip dan jika index bernilai 21 maka akan di break. Untuk mengatasi masalah ini dapat dilakukan dengan menggunakan operator && pada if else. Jika berhasil akan menghasilkan output seperti berikut :

![Output-6!](/week-03/docs/praktikum-03_2.png "Output-6")

## Tugas Praktikum

Buatlah sebuah program yang dapat menampilkan bilangan prima dari angka 0 sampai 201 menggunakan Dart. Ketika bilangan prima ditemukan, maka tampilkan nama lengkap dan NIM Anda.

Kode :

```dart
void main(List<String> args) {
  for (int i = 0; i < 201; i++) {
    int count = 0;
    for (int j = 1; j <= i; j++) {
      if (i % j == 0) {
        count++;
      }
    }
    if (count == 2) {
      print("Nama : Alfan Olivan--NIM : 2141720078");
    }
    print(i);
  }
}
```

Output :

![Output-7!](/week-03/docs/tugas-praktikum_02.png "Output-7")

Penjelasan :
Kode diatas digunakan untuk mencetak semua bilangan prima dari 0 hingga 200, bersama dengan teks "Nama : Alfan Olivan--NIM : 2141720078" setiap kali menemukan bilangan prima.

1. 'for (int i = 0; i < 201; i++)': Ini adalah loop pertama yang akan berjalan dari 0 hingga 200. Variabel i digunakan sebagai variabel loop yang akan digunakan untuk menguji setiap bilangan dalam rentang ini.
2. 'int count = 0;': Variabel count dideklarasikan dan diatur ulang ke 0 setiap kali loop for luar dimulai. Variabel ini akan digunakan untuk menghitung berapa banyak pembagi yang dimiliki oleh bilangan i.
3. 'for (int j = 1; j <= i; j++)': Ini adalah loop bersarang yang akan berjalan dari 1 hingga i. Variabel j digunakan untuk menguji setiap pembagi potensial dari i.
4. 'if (i % j == 0)': Pernyataan ini menguji apakah j adalah pembagi dari i dengan memeriksa apakah sisa bagi dari i dibagi oleh j adalah 0. Jika benar, maka j adalah pembagi dari i, dan count akan ditambahkan 1.
5. 'if (count == 2)': Setelah loop for dalam selesai, program menguji apakah count sama dengan 2. Ini adalah kondisi untuk menentukan apakah bilangan i adalah bilangan prima, karena bilangan prima hanya memiliki dua pembagi yang berbeda (1 dan dirinya sendiri).
