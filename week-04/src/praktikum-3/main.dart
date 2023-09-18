void main(List<String> args) {
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
}
