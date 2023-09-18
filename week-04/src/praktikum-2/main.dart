void main(List<String> args) {
  var halogens = {'fluorine', 'chlorine', 'bromine', 'iodine', 'astatine'};
  print(halogens);

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
}
