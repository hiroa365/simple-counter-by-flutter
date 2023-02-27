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
        if (id == MyHomePage.route)
          MaterialPage(
            child: MyHomePage(
              title: 'Flutter Demo Home Page',
              navigateToNext: () => _handleNavigateTo(SecondPage.route),
            ),
          ),
        if (id == SecondPage.route)
          MaterialPage(
            child: SecondPage(
              title: 'Flutter Demo Second Page',
              navigateToTop: () => _handleNavigateTo(MyHomePage.route),
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
