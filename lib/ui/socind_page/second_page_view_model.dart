import 'package:flutter/cupertino.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:simplecounterbyflutter/device/device_controller.dart';

final secondPageViewModelProvider =
ChangeNotifierProvider.autoDispose((ref) => SecondPageViewModel());

class SecondPageViewModel extends ChangeNotifier {
  SecondPageViewModel();

  final _usecase = ReadMagStripeUseCaseImpl();

  void onClickReadMSButton() {
    debugPrint('SecondPageViewModel: onClickReadMSButton');
    _usecase.call().then((result) {
      //戻り値の分岐処理
    });
  }
}

///インターフェース定義
abstract class ReadMagStripeUseCase {
  Future<ReadMagStripeResult> call();
}

///戻り値の定義は、返却データを追加可能なkotlinのsealed class型を使う
abstract class ReadMagStripeResult {}

@immutable
class ReadMagStripeSuccess implements ReadMagStripeResult {}

@immutable
class ReadMagStripeFooError implements ReadMagStripeResult {}

class ReadMagStripeUseCaseImpl implements ReadMagStripeUseCase {
  final _deviceController = DeviceController();

  @override
  Future<ReadMagStripeResult> call() {
    //ここでは、時系列の処理を直列で記載する
    //repositoryやdeviceのAPIを呼び出す
    _deviceController.readMagStripe().then((result){
      //戻り値の分岐処理
    });

    //Futureって直列で書ける？

    return Future.value(ReadMagStripeSuccess());
  }
}
