import 'dart:async';

Future<String> delayedMessage() async {
  await Future.delayed(const Duration(seconds: 2));
  return 'Hello after 2 seconds!';
}

Future<void> main() async {
  print('Starting Part 1...');
  final msg = await delayedMessage();
  print('Result: $msg');
  print('Part 1 done.');
}