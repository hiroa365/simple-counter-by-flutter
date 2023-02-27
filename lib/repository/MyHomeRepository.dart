import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:simplecounterbyflutter/model/counter.dart';

final myHomeRepositoryProvider = Provider.autoDispose((ref) {
  return MyHomeRepositoryImpl(ref.read);
});

abstract class MyHomeRepository {
  Future<Counter> incrementCounter();
}

class MyHomeRepositoryImpl implements MyHomeRepository {
  MyHomeRepositoryImpl(this._read) : _counter = _read(counterProvider);

  final Reader _read;
  final Counter _counter;

  @override
  Future<Counter> incrementCounter() {
    _counter.counter = _counter.counter + 1;
    return Future.value(_counter);
  }
}
