import 'package:flutter/cupertino.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:simplecounterbyflutter/repository/MyHomeRepository.dart';

final myHomePageViewModelProvider = ChangeNotifierProvider.autoDispose((ref) =>
    MyHomePageViewModel(repository: ref.read(myHomeRepositoryProvider)));

class MyHomePageViewModel extends ChangeNotifier {
  MyHomePageViewModel({required repository}) : _repository = repository;

  int _counter = 0;

  final MyHomeRepository _repository;

  int getCounter() {
    return _counter;
  }

  void incrementCounter() {
    _repository.incrementCounter().then((counter) {
      _counter = counter.counter;
      notifyListeners();
    });
  }
}
