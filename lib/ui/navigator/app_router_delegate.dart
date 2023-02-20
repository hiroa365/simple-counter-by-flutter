import 'package:flutter/material.dart';
import 'package:simplecounterbyflutter/ui/my_home_page/my_home_page.dart';
import 'package:simplecounterbyflutter/ui/root_page/root_page.dart';
import 'package:simplecounterbyflutter/ui/socind_page/second_page.dart';

class AppRouterDelegate extends RouterDelegate<void>
    with ChangeNotifier, PopNavigatorRouterDelegateMixin<void> {
  @override
  final GlobalKey<NavigatorState> navigatorKey;

  AppRouterDelegate() : navigatorKey = GlobalKey<NavigatorState>();

  String id = '/';

  @override
  Widget build(BuildContext context) {
    return Navigator(
      key: navigatorKey,
      pages: [
        const MaterialPage(
          child: RootPage(),
        ),
        if (id == '/')
          MaterialPage(
            child: MyHomePage(
              title: 'Flutter Demo Home Page',
              navigateTo: _handleNavigateTo,
            ),
          ),
        if (id == '/2')
          MaterialPage(
            child: SecondPage(
              title: 'Flutter Demo Second Page',
              navigateTo: _handleNavigateTo,
            ),
          ),
      ],
      onPopPage: (route, result) => false,
    );
  }

  @override
  Future<void> setNewRoutePath(void configuration) async {}

  void _handleNavigateTo(String value) {
    id = value;
    notifyListeners();
  }
}
