import 'package:flutter/services.dart';

class DeviceController {
  static const platform = MethodChannel('samples.flutter.dev/test');

  ///カード検出待ち
  Future<bool> detectCard() async {
    try {
      return await platform.invokeMethod('detectCard');
    } on PlatformException {
      return false;
    }
  }

  ///MS読み取り待ち
  Future<bool> readMagStripe() async {
    try {
      return await platform.invokeMethod('readMagStripe');
    } on PlatformException {
      return false;
    }
  }
}
