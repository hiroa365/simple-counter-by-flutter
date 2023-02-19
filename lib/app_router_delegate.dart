// 今回の実装では AppRouterDelegate がリビルドされる可能性があるためグローバルに宣言
import 'package:flutter/material.dart';
import 'package:simplecounterbyflutter/ui/my_home_page/my_home_page.dart';

class AppRouterDelegate extends RouterDelegate<void>
    with ChangeNotifier, PopNavigatorRouterDelegateMixin<void> {
  @override
  final GlobalKey<NavigatorState> navigatorKey;

  AppRouterDelegate() : navigatorKey = GlobalKey<NavigatorState>();

  String id = '';

  @override
  Widget build(BuildContext context) {
    return Navigator(
      key: navigatorKey,
      pages: [
        MaterialPage(
            child: MyHomePage(
              title: 'Flutter Demo Home Page',
              onSelectedArticle: (String value) {
                id = value;
                notifyListeners();
              },
            )),
      ],
      onPopPage: (route, result) => true,
    );
  }

  @override
  Future<void> setNewRoutePath(void configuration) async {}
}
