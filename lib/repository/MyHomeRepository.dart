import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:simplecounterbyflutter/model/counter.dart';

final myHomeRepositoryProvider =
    Provider((ref) => MyHomeRepositoryImpl(counter: ref.read(counterProvider)));

abstract class MyHomeRepository {
  Future<Counter> incrementCounter();
}

class MyHomeRepositoryImpl implements MyHomeRepository {
  MyHomeRepositoryImpl({required Counter counter}) : _counter = counter;

  final Counter _counter;

  @override
  Future<Counter> incrementCounter() {
    _counter.counter = _counter.counter + 1;
    return Future.value(_counter);
  }
}
