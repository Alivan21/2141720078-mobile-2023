import 'dart:async';
import 'dart:math';

class RandomNumberBloc {
  RandomNumberBloc() {
    _generateRandomController.stream.listen((_) {
      final random = Random();
      final number = random.nextInt(100);
      _randomNumberController.sink.add(number);
    });
  }

  void dispose() {
    _generateRandomController.close();
    _randomNumberController.close();
  }

  final _generateRandomController = StreamController<void>();
  final _randomNumberController = StreamController<int>();

  Sink<void> get generateRandomNumber => _generateRandomController.sink;

  Stream<int> get randomNumber => _randomNumberController.stream;
}
