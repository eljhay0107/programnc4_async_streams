import 'dart:async';

Stream<int> numberStream() async* {
  for (var i = 1; i <= 5; i++) {
    await Future.delayed(const Duration(seconds: 1));
    yield i;
  }
}

Future<void> main() async {
  print('Starting Part 3...');
  await for (final value in numberStream()) {
    print('Received: $value');
  }
  print('Stream complete.');
}