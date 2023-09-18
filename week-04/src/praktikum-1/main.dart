void main(List<String> args) {
  var list = [1, 2, 3];
  assert(list.length == 3);
  assert(list[1] == 2);
  print(list.length);
  print(list[1]);

  list[1] = 1;
  assert(list[1] == 1);
  print(list[1]);

  final List? myList = List.filled(5, null, growable: false);
  myList![1] = "Alfan Olivan";
  myList[2] = 2141720078;
  print(myList);
}
