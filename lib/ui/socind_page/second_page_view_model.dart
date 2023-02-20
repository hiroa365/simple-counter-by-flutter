import 'package:flutter/cupertino.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:simplecounterbyflutter/device/device_controller.dart';

final secondPageViewModelProvider =
    ChangeNotifierProvider.autoDispose((ref) => SecondPageViewModel());

class SecondPageViewModel extends ChangeNotifier {
  SecondPageViewModel();

  final _deviceController = DeviceController();

  void onClickReadMSButton() {
    debugPrint('SecondPageViewModel: onClickReadMSButton');
    _deviceController.readMagStripe();
  }
}
