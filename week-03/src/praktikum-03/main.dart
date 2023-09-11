void main(List<String> args) {
  for (int index = 1; index < 27; index++) {
    if (index == 21) break;
    if (index > 1 && index < 7) continue;
    print(index);
  }
}
