import 'package:ameanacademy/feature/auth/signin/controller/signin_controller.dart';
import 'package:ameanacademy/feature/auth/signin/view/signin_view.dart';
import 'package:ameanacademy/feature/auth/signup/controller/signup_controller.dart';
import 'package:provider/provider.dart';
import 'package:provider/single_child_widget.dart';

import '../../../core/init/notifier/theme_notifier/theme_notifier.dart';

class ApplicationProvider {
  static ApplicationProvider? _instance;
  static ApplicationProvider get instance {
    _instance ??= ApplicationProvider._init();
    return _instance!;
  }

  ApplicationProvider._init();

  List<SingleChildWidget> singleItems = [];
   List<SingleChildWidget> dependItems = [
     ChangeNotifierProvider(create: (context) => ThemeNotifier(),),
     ChangeNotifierProvider(create: (context) => SigninController(),),
     ChangeNotifierProvider(create: (context) => SignUpController(),)

    
  ];
  List<SingleChildWidget> uiChangesItems = [];
}
