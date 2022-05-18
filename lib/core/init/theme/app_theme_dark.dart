import '../../../product/init/theme/gemiadam_dark_theme/dark_theme.dart';

import 'app_theme.dart';
import 'package:flutter/material.dart';

class AppThemeDark extends AppTheme {
  // singleton lazy pattern
  // çağrıldığı anda değeri dolduruyor
  static AppThemeDark? _instance;
  static AppThemeDark get instance {
    _instance ??= AppThemeDark._init();
    return _instance!;
  }

  AppThemeDark._init();

  ThemeData get theme => AppDarkTheme;
}
