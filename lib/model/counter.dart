import 'package:flutter_riverpod/flutter_riverpod.dart';

final counterProvider = StateProvider.autoDispose((ref) => Counter());

class Counter {
  int counter = 0;
}
