import 'package:flutter_riverpod/flutter_riverpod.dart';

final counterProvider = Provider((ref) => Counter());

class Counter {
  int counter = 0;
}
