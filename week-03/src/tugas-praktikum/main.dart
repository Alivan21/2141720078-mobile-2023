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
