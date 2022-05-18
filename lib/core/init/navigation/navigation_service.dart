import 'I_navigation_service.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class NavigationService implements INavigationService {
  // eager pattern uygulama ayağa kalkerken oluştrulmaktadır
  static NavigationService? _instance = NavigationService._init();
  static NavigationService get instance => _instance!;

  NavigationService._init();

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();
  final removeOldRoutes = (Route<dynamic> route) => false;

  @override
  Future<void> navigateToPage({
    String? path,
    Object? data,
  }) async {
    await navigatorKey.currentState!.pushNamed(path!, arguments: data);
  }

  @override
  Future<void> navigateToPageClear({String? path, Object? data}) async {
    await navigatorKey.currentState!
        .pushNamedAndRemoveUntil(path!, removeOldRoutes, arguments: data);
  }
}
