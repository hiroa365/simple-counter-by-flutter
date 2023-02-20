import 'package:flutter/cupertino.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final secondPageViewModelProvider = ChangeNotifierProvider.autoDispose((ref) =>
    SecondPageViewModel());

class SecondPageViewModel extends ChangeNotifier {
  SecondPageViewModel();

}
