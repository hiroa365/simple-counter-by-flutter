import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'second_page_state.dart';

class SecondPageStateNotifier extends StateNotifier<SecondPageState> {
  SecondPageStateNotifier() : super(SecondPageState());

  @override
  void dispose() {
    super.dispose();
  }

  void onClickReadMSButton() {}
}
