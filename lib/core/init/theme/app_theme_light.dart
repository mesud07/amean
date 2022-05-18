import 'package:ameanacademy/product/init/theme/gemiadam_light_theme/light_theme.dart';
import 'package:flutter/material.dart';

import 'app_theme.dart';

class AppThemeLight extends AppTheme {
  // singleton lazy pattern
  // çağrıldığı anda değeri dolduruyor
  static AppThemeLight? _instance;
  static AppThemeLight get instance {
    _instance ??= AppThemeLight._init();
    return _instance!;
  }

  AppThemeLight._init();

  ThemeData get theme => AppLightTheme;
}
