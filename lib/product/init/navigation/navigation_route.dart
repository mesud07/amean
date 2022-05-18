import 'package:ameanacademy/feature/auth/signin/view/signin_view.dart';
import 'package:flutter/material.dart';


import '../../../core/components/error/navigation_error_widget.dart';
import '../../constants/navigation/navigation_constants.dart';

class NavigationRoute {
  static NavigationRoute? _instance = NavigationRoute._init();
  static NavigationRoute get instance => _instance!;

  NavigationRoute._init();

  Route<dynamic> generateRoute(RouteSettings args) {
    switch (args.name) {
      
      case NavigationConstants.loginView:
        return normalNavigate(const SignInView());
    

      default:
        return MaterialPageRoute(
          builder: (context) => const NotFoundNavigationWidget(),
        );
    }
  }

  MaterialPageRoute normalNavigate(Widget widget) {
    return MaterialPageRoute(builder: (context) => widget);
  }
}
