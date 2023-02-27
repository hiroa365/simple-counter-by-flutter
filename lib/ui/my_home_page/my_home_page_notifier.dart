import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'my_home_page_state.dart';

class MyHomePageNotifier extends StateNotifier<MyHomePageState> {
  MyHomePageNotifier() : super(const MyHomePageState(counter: 0));

  @override
  void dispose() {
    super.dispose();
  }

  // void increment() => state = MyHomePageState(counter: state.counter + 1);
  void increment() => state = state.copyWith(counter: state.counter + 1);
}
