## Repository Mobile Programming Class 2023.

Nama : Alfan Olivan

NIM : 2141720078

Tugas : Minggu 4

<div align="center">
  <h2>Pertemuan Keempat - Pengantar Bahasa Pemrograman Dart Bagian 4</h2>
</div>

### Praktikum 1 - List

1. Langkah 1

   Kode :

   ```dart
   var list = [1, 2, 3];
   assert(list.length == 3);
   assert(list[1] == 2);
   print(list.length);
   print(list[1]);

   list[1] = 1;
   assert(list[1] == 1);
   print(list[1]);
   ```

   Output :

   ![Output-1!](/week-04/docs/1-1.png "Output-1")

2. Langkah 2

   Program akan menampilkan panjang dari variabel list dan menampilkan nilai dari index ke-1 dari variabel list. Lalu index ke-1 dari list akan diubah menjadi 1 dan menampilkan nilai dari index ke-1 dari variabel list.

3. Langkah 3

   Kode :

   ```dart
    final List? myList = List.filled(5, null, growable: false);
    myList![1] = "Alfan Olivan";
    myList[2] = 2141720078;
    print(myList);
   ```

   Output :

   ![Output-2!](/week-04/docs/1-3.png "Output-2")

### Praktikum 2 - Set

1. Langkah 1

   Kode :

   ```dart
   var halogens = {'fluorine', 'chlorine', 'bromine', 'iodine', 'astatine'};
   print(halogens);
   ```

   Output :

   ![Output-3!](/week-04/docs/2-1.png "Output-3")

2. Langkah 2

   Kode diatas akan menampilkan set yang berisi 5 elemen dari variabel halogens.

3. Langkah 3

   Kode :

   ```dart
      var names1 = <String>{};
      Set<String> names2 = {}; // This works, too.
      var names3 = {}; // Creates a map, not a set.
      print(names1);
      print(names2);
      print(names3);
      names1.add("Alfan");
      names1.add("2141720078");
      print(names1);
      const profile = {"Alfan Olivan", "2141720078"};
      names2.addAll(profile);
      print(names2);
   ```

   Output :

   ![Output-4!](/week-04/docs/2-3.png "Output-4")

### Praktikum 3 - Map

1. Langkah 1

   Kode:

   ```dart
   var gifts = {
   // Key:    Value
   'first': 'partridge',
   'second': 'turtledoves',
   'fifth': 1
   };

   var nobleGases = {
      2: 'helium',
      10: 'neon',
      18: 2,
   };

   print(gifts);
   print(nobleGases);
   ```

   Output :

   ![Output-5!](/week-04/docs/3-1.png "Output-5")

2. Langkah 2

   Kode diatas akan menampilkan map yang berisi 3 elemen dari variabel gifts dan map yang berisi 3 elemen dari variabel nobleGases.

3. Langkah 3

   Kode:

   ```dart
    var mhs1 = Map<String, String>();
      gifts['first'] = 'partridge';
      gifts['second'] = 'turtledoves';
      gifts['fifth'] = 'golden rings';
      print(mhs1);

      var mhs2 = Map<int, String>();
      nobleGases[2] = 'helium';
      nobleGases[10] = 'neon';
      nobleGases[18] = 'argon';
      print(mhs2);

      gifts.addEntries(
       [
         MapEntry('Nama', 'Alfan'),
         MapEntry('NIM', '2141720078'),
       ],
      );
      nobleGases.addEntries(
       [
         MapEntry(3, 'Alfan'),
         MapEntry(4, '2141720078'),
       ],
      );
      mhs1.addEntries(
       [
         MapEntry('Nama', 'Alfan'),
         MapEntry('NIM', '2141720078'),
       ],
      );
      mhs2.addEntries(
       [
         MapEntry(3, 'Alfan'),
         MapEntry(4, '2141720078'),
       ],
      );

      print(gifts);
      print(nobleGases);
      print(mhs1);
      print(mhs2);
   ```

   Output :

   ![Output-6!](/week-04/docs/3-3.png "Output-6")

### Praktikum 4 - Spread Operator & Control Flow Operators

1. Langkah 1

   Kode:

   ```dart
   var list = [1, 2, 3];
   var list2 = [0, ...list];
   print(list1);
   print(list2);
   print(list2.length);
   ```

   Output :

   ![Output-7!](/week-04/docs/4-1.png "Output-7")

2. Langkah 2

   Kode diatas akan mengalamai error karena variabel list1 tidak dideklarasikan terlebih dahulu. untuk mengatasi hal tersebut dapat dilakukan dengan cara mendeklarasikan variabel list1 terlebih dahulu.

3. Langkah 3

   ```dart
   list1 = [1, 2, null];
   print(list1);
   var list3 = [0, ...?list1];
   print(list3.length);
   ```

   Kode diatas akan menampilkan error seperti berikut

   ```
   The element type 'Null' can't be assigned to the list type
   ```

   dan warning seperti berikut juga

   ```
    The receiver can't be null, so the null-aware operator '...?' is unnecessary.
    Try replacing the operator '...?' with '...'.
   ```

   Untuk mengatasi hal tersebut dapat dilakukan dengan menjalankan kode berikut

   ```dart
     var list1 = [1, 2, 3];
     var list2 = [0, ...list1];
     print(list1);
     print(list2);
     print(list2.length);

     var list = [1, 2, null];
     print(list);
     var list3 = [0, ...list, ...profile];
     print(list3.length);
   ```

   Sedangkan untuk menambahkan variabel list berisi NIM Anda menggunakan Spread Operators. Kode yang digunakan adalah sebagai berikut

   ```dart
     var list1 = [1, 2, 3];
     var list2 = [0, ...list1];
     print(list1);
     print(list2);
     print(list2.length);

     var list = [1, 2, null];
     print(list);
     const profile = ["Alfan Olivan", "2141720078"];
     var list3 = [0, ...list, ...profile];
     print(list3.length);
     print("List 3 : ${list3}");
   ```

   Output :

   ![Output-8!](/week-04/docs/4-3.png "Output-8")

4. Langkah 4

   Kode:

   ```dart
   var nav = ['Home', 'Furniture', 'Plants', if (promoActive) 'Outlet'];
   print(nav);
   ```

   Kode diatas akan menampilkan error karena variabel promoActive tidak dideklarasikan terlebih dahulu. untuk mengatasi hal tersebut dapat dilakukan dengan cara mendeklarasikan variabel promoActive terlebih dahulu. Untuk komparasi jika variabel promoActive sebagai true dan false maka outputnya akan seperti berikut

   ```dart
    const promoActive = true;
    var nav = ['Home', 'Furniture', 'Plants', if   (promoActive) 'Outlet'];
    print(nav);
   ```

   Output:

   ![Output-9!](/week-04/docs/4-4-0.png "Output-9")

   Kode:

   ```dart
     const promoActive = false;
     var nav = ['Home', 'Furniture', 'Plants', if   (promoActive) 'Outlet'];
     print(nav);
   ```

   Output:

   ![Output-10!](/week-04/docs/4-4-1.png "Output-10")

5. Langkah 5

   Kode:

   ```dart
   const login = 'Manager';
   var nav2 = ['Home', 'Furniture', 'Plants', if (login case 'Manager') 'Inventory'];
   print(nav2);
   ```

   Output:

   ![Output-11!](/week-04/docs/4-5-0.png "Output-11")

   Untuk selain Manager maka outputnya akan seperti berikut

   ```dart
   const login = 'Employee';
   var nav2 = [
    'Home',
    'Furniture',
    'Plants',
    if (login case 'Manager') 'Inventory'
   ];
   print(nav2);
   ```

   Output:

   ![Output-12!](/week-04/docs/4-4-1.png "Output-12")

6. Langkah 6

   Kode:

   ```dart
   var listOfInts = [1, 2, 3];
   var listOfStrings = ['#0', for (var i in listOfInts) '#$i'];
   assert(listOfStrings[1] == '#1');
   print(listOfStrings);
   ```

   Output:

   ![Output-13!](/week-04/docs/4-6.png "Output-13")

   Dart menawarkan collection if dan collection for digunakan untuk list, map, dan set literals. Hal ini dapat menggunakan operator ini untuk membangun collections menggunakan kondisional ( if ) dan pengulangan ( for ).

### Praktikum 5 - Records

1. Langkah 1

   Kode:

   ```dart
   var record = ('first', a: 2, b: true, 'last');
   print(record)
   ```

   Output:

   ![Output-14!](/week-04/docs/5-1.png "Output-14")

   Kode diatas akan mencetak variabel record yang berisi 4 elemen.

2. Langkah 3

   Kode:

   ```dart
      (int, int) tukar((int, int) record) {
       var (a, b) = record;
       return (b, a);
      }
      print(tukar((1, 2)));
   ```

   Output:

   ![Output-15!](/week-04/docs/5-2.png "Output-15")

   Kode diatas akan melakukan pertukaran nilai dari variabel record. Lalu akan mencetak nilai dari variabel record yang sudah ditukar.

3. Langkah 4

   Kode:

   ```dart
   // Record type annotation in a variable declaration:
   (String, int) mahasiswa = ("Alfan", 2141720078);
   print(mahasiswa);
   ```

   Output:

   ![Output-16!](/week-04/docs/5-4.png "Output-16")

   Kode diatas akan mencetak variabel mahasiswa yang berisi 2 elemen.

4. Langkah 5

   Kode:

   ```dart
   var mahasiswa2 = ('first', a: 2, b: true, 'last');
   print(mahasiswa2.$1); // Prints 'first'
   print(mahasiswa2.a); // Prints 2
   print(mahasiswa2.b); // Prints true
   print(mahasiswa2.$2); // Prints 'last'
   ```

   Output:

   ![Output-17!](/week-04/docs/5-5.png "Output-17")

   Records tidak memiliki setter sehingga tidak dapat diubah nilainya. Sehingga jika ingin melakukan perubahan nilai maka harus membuat variabel baru.

   Contoh :

   ```dart
   mahasiswa2.$1 = 'Alfan';
   mahasiswa2.a = 2141720078;
   ```

   maka akan menghasilkan error:

   ```
   The setter '$1' isn't defined for the type '(String, String, {int a, bool b})'.
   Try importing the library that defines '$1', correcting the name to the name of an existing setter, or defining a setter or field named '$1'.
   ```

### Tugas Praktikum

1. Jelaskan yang dimaksud Functions dalam bahasa Dart!

   Jawaban : Functions dalam dart adalah objek dan memiliki tipe Function. Ini berarti fungsi dapat ditetapkan ke variabel atau dipassing ke fungsi lain. Anda juga dapat mengambil fungsi dan mengembalikannya dari fungsi lain. Fungsi yang mengembalikan fungsi lain dikenal sebagai fungsi penghasil.

   Contoh:

   ```dart
   bool isNoble(int atomicNumber) {
   return _nobleGases[atomicNumber] != null;
   }
   ```

2. Jelaskan jenis-jenis parameter di Functions beserta contoh sintaksnya!

   Sebuah function dapat memiliki banyak parameter, dan parameter dapat memiliki nilai default. Baik berdasarkan named parameter atau optional parameter (tetapi tidak keduanya)

   - Named Parameter

     Dalam bahasa pemrograman Dart, Anda dapat menggunakan parameter bernama (named parameters) dalam fungsi yang digunakan untuk memberikan lebih banyak fleksibilitas dalam memanggil fungsi dengan argumen yang spesifik. Dengan parameter bernama, Anda dapat menyebutkan nama parameter secara eksplisit saat memanggil fungsi, sehingga Anda tidak perlu mengingat urutan parameter dalam daftar argumen.
     Contoh:

     ```dart
     void printPersonInfo({String name, int age, String address}) {
      print('Nama: $name');
      print('Usia: $age');
      print('Alamat: $address');
     }

     void main() {
      // Memanggil fungsi printPersonInfo dengan parameter bernama
      printPersonInfo(name: 'John', age: 30, address: '123 Main St');
     }
     ```

   - Optional positional parameters

     Dalam bahasa pemrograman Dart, Anda dapat menggunakan parameter posisional opsional (optional positional parameters) untuk memberikan fleksibilitas dalam jumlah argumen yang diberikan saat memanggil sebuah fungsi. Dengan parameter posisional opsional, Anda dapat mengizinkan beberapa argumen tanpa harus menyebutkan nama parameter saat memanggil fungsi.

     Berikut adalah contoh sederhana dari sebuah fungsi dengan parameter posisional opsional dalam Dart:

     ```dart
     void greet(String greeting, [String? name = '']) {
       print('$greeting, $name');
     }
     void main() {
     // Memanggil fungsi greet dengan satu argumen
       greet('Hello'); // Output: Hello,

       // Memanggil fungsi greet dengan dua argumen
       greet('Hi', 'Alice'); // Output: Hi, Alice
     }
     ```

3. Jelaskan maksud Functions sebagai first-class objects beserta contoh sintaknya!

   Dart mendukung fungsi sebagai first-class objects, atau fungsi yang dapat diberikan dan dikembalikan dari fungsi lain. Anda dapat mengasign fungsi ke variabel, mengirimkannya sebagai argumen ke fungsi lain, dan mengembalikan fungsi dari fungsi lain. Fungsi yang mengembalikan fungsi lain dikenal sebagai fungsi penghasil.

   Contoh :

   ```dart
   // Assign a function to a variable
   var say = (String msg) => print(msg);
   // Pass a function as an argument to another function
   void higherOrderFunction(Function myFunction) {
     myFunction('Hello');
   }
   // Call a higher-order function
   higherOrderFunction(say); // Output: Hello
   ```

4. Apa itu Anonymous Functions? Jelaskan dan berikan contohnya!

   Anonymous function adalah fungsi yang tidak memiliki nama. Fungsi ini dapat disimpan dalam variabel dan digunakan sebagai argumen untuk fungsi lain. Dart mendukung dua jenis fungsi anonim: fungsi anonim yang dieksekusi (void) dan fungsi anonim yang mengembalikan nilai.

   Contoh :

   ```dart
   // Anonymous function
   var list = ['apples', 'bananas', 'oranges'];
   list.forEach((item) {
     print('${list.indexOf(item)}: $item');
   });
   ```

5. Jelaskan perbedaan Lexical scope dan Lexical closures! Berikan contohnya!

   Lexical scope adalah kemampuan sebuah fungsi untuk mengakses variabel yang berada di luar fungsi tersebut. Sedangkan Lexical closures adalah kemampuan sebuah fungsi untuk mengakses variabel yang berada di luar fungsi tersebut dan variabel yang berada di dalam fungsi tersebut.

   Contoh :

   ```dart
   // Lexical scope
   var outsideVariable = 'Hello';
   void main() {
     print(outsideVariable); // Output: Hello
   }
   ```

   ```dart
   // Lexical closures
   void main() {
     var outsideVariable = 'Hello';
     void myFunction() {
       print(outsideVariable);
     }
     myFunction(); // Output: Hello
   }
   ```

6. Jelaskan dengan contoh cara membuat return multiple value di Functions!

   Dengan menggunakan dart 3.0 hal ini dapat dilakukan dengan muda dengan menggunakan syntax berikut

   ```dart
    (int, String) foo() {
    return (42, "foobar");
   }

   void main() {
     var (a,b) = foo();
     print("int: ${a}");
     print("String: ${b}");
   }
   ```

   Pada versi dart sebelum 3.0 hal ini tidak dapat dilakukan dan harus menggunakan list seperti berikut

   ```dart
   List foo() {
    return [42, "foobar"];
    }
   ```
