import 'dart:math';

class NumberStream {
  Stream<int> getNumbers() async* {
    yield* Stream.periodic(Duration(seconds: 1), (int a) {
      Random random = Random();
      int randomNumber = random.nextInt(100);
      return randomNumber;
    });
  }
}
