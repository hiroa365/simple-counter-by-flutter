import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'my_home_page_notifier.dart';
import 'my_home_page_state.dart';

final myHomePageNotifierProvider =
    StateNotifierProvider.autoDispose<MyHomePageNotifier, MyHomePageState>(
        (ref) => MyHomePageNotifier());
