void main(List<String> args) {
  var record = ('first', a: 2, b: true, 'last');
  print(record);

  (int, int) tukar((int, int) record) {
    var (a, b) = record;
    return (b, a);
  }

  print(tukar((1, 2)));

  // Record type annotation in a variable declaration:
  (String, int) mahasiswa = ("Alfan", 2141720078);
  print(mahasiswa);

  var mahasiswa2 = ('first', a: 2, b: true, 'last');
  print(mahasiswa2.$1); // Prints 'first'
  print(mahasiswa2.a); // Prints 2
  print(mahasiswa2.b); // Prints true
  print(mahasiswa2.$2); // Prints 'last'

  // mahasiswa2.$1 = 'Alfan';
  // mahasiswa2.a = 2141720078;
}
