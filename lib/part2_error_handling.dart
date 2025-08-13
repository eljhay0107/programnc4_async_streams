import 'dart:async';

Future<String> mayFail({bool fail = true}) async {
  return Future.delayed(const Duration(seconds: 1), () {
    if (fail) {
      throw Exception('Simulated failure');
    }
    return 'Success!';
  });
}

Future<void> main() async {
  print('Starting Part 2...');
  try {
    final res = await mayFail(); // default: will throw
    print('Result: $res');
  } catch (e) {
    print('Caught error: $e');
  } finally {
    print('Part 2 done.');
  }
}
