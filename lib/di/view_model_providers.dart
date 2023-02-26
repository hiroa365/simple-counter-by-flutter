

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:simplecounterbyflutter/ui/my_home_page/my_home_page_view_model.dart';
import 'package:simplecounterbyflutter/ui/socind_page/second_page_view_model.dart';

final myHomePageNotifierProvider =
StateNotifierProvider.autoDispose<MyHomePageNotifier, MyHomePageState>(
        (ref) => MyHomePageNotifier());


final secondPageNotifierProvider =
StateNotifierProvider.autoDispose<SecondPageStateNotifier, SecondPageState>(
        (ref) => SecondPageStateNotifier(SecondPageState()));
