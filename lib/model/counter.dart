import 'package:flutter_riverpod/flutter_riverpod.dart';

final counterProvider = Provider.autoDispose((ref) => Counter());

class Counter {
  int counter = 0;
}
