## Repository Mobile Programming Class 2023.

### 1. Nama : Alfan Olivan

### 2. NIM : 2141720078

### 3. Tugas : Minggu 2

<div align="center">
  <h2>Pertemuan Kedua - Pengenalan Dart</h2>
</div>

### Soal 1 - Looping

- Code

  ```dart
  void main(List<String> args) {
    for (int i = 18; i > 8; i--) {
      print("Nama saya Alivan, sekarang berumur $i tahun");
    }
  }

  ```

- Output
  ![Output!](/week-02/docs/soal1.png "Output")

### Soal 2 - Why Dart?

- Apa itu dart
  Dart adalah bahasa pemograman yang dikembangkan oleh Google. Dart dapat digunakan untuk membuat aplikasi multi platform seperti mobile, desktop, IOS, dan web. Dart juga merupakan bahasa yang _client-optimized_

- Kenapa harus belajar dart sebelum flutter?
  Dart adalah bahasa pemograman yang digunakan untuk membuat aplikasi flutter. Jadi, jika ingin membuat aplikasi flutter, seharusnya belajar dart terlebih dahulu. Jadi dart disini hanyalah sebuah bahasa pemograman, sedangkan flutter adalah sebuah framework yang menggunakan bahasa dart yang digunakan untuk membuat aplikasi multi platform. Untuk memahami flutter lebih baik sebaiknya dapat dimulai dengan mempelajari konsep konsep yang terdapat dalam dart terlebih dahulu. Untuk penjelasan lebih lanjut, dapat dilihat di [sini](https://www.quora.com/Do-I-need-to-learn-Dart-before-learning-Flutter-Or-is-it-intuitive-like-Python)

### Soal 3 - Rangkuman Materi Codelab

- [Materi Codelab](https://jti-polinema.github.io/flutter-codelab/06-pengantar-bahasa-pemrograman-dart-bag-1/)
- Apa itu dart?
  Bahasa Dart adalah bahasa pemrograman tingkat tinggi yang digunakan dalam pengembangan Flutter, sebuah _framework_ untuk membuat aplikasi mobile. Memahami Dart adalah kunci untuk menggunakan dengan Flutter dengan baik, dan ini adalah dasar yang diperlukan untuk menjadi Flutter developer.Dart ini menggunakan OOP sebagai paradigma pemrogramannya. Dart juga merupakan bahasa pemrograman yang _client-optimized_.

- Fitur utama dart

  - Productive tooling: merupakan fitur kakas (tool) untuk menganalisis kode, plugin IDE, dan ekosistem paket yang besar.
  - Garbage collection: untuk mengelola atau menangani dealokasi memori (terutama memori yang ditempati oleh objek yang tidak lagi digunakan).
  - Type annotations (opsional): untuk keamanan dan konsistensi dalam mengontrol semua data dalam aplikasi.
  - Statically typed: Meskipun type annotations bersifat opsional, Dart tetap aman karena menggunakan fitur type-safe dan type inference untuk menganalisis types saat runtime. Fitur ini penting untuk menemukan bug selama kompilasi kode.
  - Portability: bahasa Dart tidak hanya untuk web (yang dapat diterjemahkan ke JavaScript) tetapi juga dapat dikompilasi secara native ke kode Advanced RISC Machines (ARM) dan x86.

- Evolusi dart

  - Awalnya berfokus pada pengembangan web, dengan tujuan utama menggantikan JavaScript, sekarang telah fokus pada mobile development, termasuk framework Flutter.
  - Mencoba memecahkan masalah pada JavaScript: JavaScript tidak menyediakan ketahanan seperti banyak bahasa pemrograman lainnya, sehingga Dart ingin menjadi penerus daripada JavaScript.
  - Menawarkan performa terbaik dan alat yang lebih baik untuk proyek berskala besar: Dart memiliki perkakas yang modern dan stabil yang telah disediakan oleh plugin IDE. Hal ini telah dirancang untuk mendapatkan performa terbaik dengan tetap menjaga nuansa bahasa yang dinamis.
  - Dibentuk agar kuat dan fleksibel: Dengan tetap mempertahankan type annotations bersifat opsional dan menambahkan fitur OOP, Dart dapat menyeimbangkan dua fitur utama yaitu fleksibilitas dan ketangguhan.

- Bagaimana dart bekerja
  [Diagram](/week-02/docs/soal3.4.png "Diagram")

  Untuk memahami dari mana fleksibilitas bahasa dart itu berasal, kita perlu tahu bagaimana cara mengeksekusi kode Dart. Ini dapat dilakukan dengan dua cara, seperti yang dijelaskan berikut ini:

  - Dart virtual machines (VMs).
  - JavaScript compilations.

  Eksekusi kode Dart dapat beroperasi dalam dua mode — kompilasi Just-In-Time (JIT) atau Kompilasi Ahead-Of-Time (AOT). Dijelaskan secara lebih rinci sebagai berikut:

  - Kompilasi JIT adalah tempat kode sumber dikompilasi sesuai kebutuhan—Just in time. Dart VM memuat dan mengkompilasi kode sumber ke kode mesin asli (native). Pendekatan ini digunakan untuk menjalankan kode pada command line atau selama proses pengembangan aplikasi mobile yang dapat memanfaatkan fitur seperti debugging dan hot reload.
  - Kompilasi AOT adalah dimana Dart VM dan kode Anda dikompilasi sebelumnya, VM bekerja lebih seperti sistem runtime Dart, yang menyediakan garbage collector dan metode-metode native dari Dart software development kit (SDK) pada aplikasi. Pendekatan ini memiliki keuntungan performa yang sangat besar dibandingkan kompilasi JIT, tetapi fitur lain seperti debugging dan hot reload tidak tersedia.

- Struktur dari bahasa pemograman dart
  Jika sudah mengetahui beberapa bahasa pemrograman seperti bahasa C atau memiliki beberapa pengalaman dengan JavaScript, sebagian besar sintaks Dart akan lebih mudah bagi Anda untuk memahaminya.
  - OOP (Object Oriented Programming): Dart adalah bahasa pemrograman yang berorientasi objek. Semua nilai dalam Dart adalah objek, bahkan angka, dan fungsi. Objek ini memiliki tipe dan nilai. Tipe objek disebut class. Class mendefinisikan perilaku dan nilai objek. Untuk membuat objek, Anda harus membuat instance dari class. Dart mendukung konsep OOP seperti abstraksi, enkapsulasi, pewarisan, dan polimorfisme.
  - Dart Operators: Operator adalah simbol yang memberi tahu kompiler untuk melakukan operasi matematika atau logika. Dart mendukung operator berikut:
    - Operator Aritmatika
    - Operator Relasional
    - Operator Logika
    - Operator Penugasan
    - Operator Ternary
- Hands-on dengan dart
  Dartpad adalah editor kode online yang disediakan oleh Google. Ini adalah cara yang bagus untuk memulai dengan Dart, karena tidak perlu menginstal apa pun di komputer Anda. Anda dapat mengakses Dartpad di [sini](https://dartpad.dev/).

  - Hello World dalam dart
    Code :

  ```dart
  void main() {
    print('Hello, World!');
  }
  ```

  Output
  [Output!](/week-01/docs/img-01.png "Output")

  - Main function
    Seperti kebanyakan bahasa modern, Dart menggunakan function dan method sebagai cara untuk memisahkan kode. Sebuah function atau method adalah potongan kode yang menerima beberapa data, eksekusi kode, dan kemudian mengembalikan beberapa data (return).
