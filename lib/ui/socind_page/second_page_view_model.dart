import 'package:flutter/foundation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class SecondPageStateNotifier extends StateNotifier<SecondPageState> {
  SecondPageStateNotifier(super._state);

  void onClickReadMSButton() {}
}

@immutable
class SecondPageState {}
