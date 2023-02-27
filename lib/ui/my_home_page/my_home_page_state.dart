import 'package:flutter/foundation.dart';

@immutable
class MyHomePageState {
  const MyHomePageState({required this.counter});

  final int counter;

  MyHomePageState copyWith({int? counter}) {
    return MyHomePageState(counter: counter ?? this.counter);
  }
}
