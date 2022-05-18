import 'package:flutter/material.dart';

import '../../../constants/enums/app_theme_enum.dart';
import '../../theme/app_theme_light.dart';
import 'i_theme_notifier.dart';

class ThemeNotifier extends ChangeNotifier implements IThemNotifier {
  //! LocalStorage den anlık tema değerine bakarak al
  ThemeData _currentTheme = AppThemeLight.instance.theme;
  ThemeData get currentTheme => _currentTheme;

  @override
  void changeTheme(AppThemes theme) {
    print("theme notifier çalıştı ... theme: $theme");
    if (theme == AppThemes.light) {
      _currentTheme = ThemeData.light();
    } else {
      _currentTheme = ThemeData.dark();
    }
    notifyListeners();
  }
}
