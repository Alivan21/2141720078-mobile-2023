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
