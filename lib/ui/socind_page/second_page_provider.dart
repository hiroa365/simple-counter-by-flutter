import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'second_page_notifier.dart';
import 'second_page_state.dart';

final secondPageNotifierProvider =
    StateNotifierProvider.autoDispose<SecondPageStateNotifier, SecondPageState>(
        (ref) => SecondPageStateNotifier());
