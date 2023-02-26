import 'package:flutter/foundation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';


@immutable
class MyHomePageState {
  const MyHomePageState({required this.counter});

  final int counter;

  MyHomePageState copyWith({int? counter}) {
    return MyHomePageState(counter: counter ?? this.counter);
  }
}

class MyHomePageNotifier extends StateNotifier<MyHomePageState> {
  MyHomePageNotifier() : super(const MyHomePageState(counter: 0));

  // void increment() => state = MyHomePageState(counter: state.counter + 1);
  void increment() => state = state.copyWith(counter: state.counter + 1);
}
