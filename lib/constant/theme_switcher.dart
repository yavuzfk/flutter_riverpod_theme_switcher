import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ThemeSwitcher extends ChangeNotifier {
  bool _isDarkTheme = false;
  bool get isDarkTheme => _isDarkTheme;

  ThemeMode themeMode = ThemeMode.light;

  switchTheme() {
    _isDarkTheme = !_isDarkTheme;
    _isDarkTheme ? makeDark() : makeLight();
    notifyListeners();
  }

  makeDark() {
    themeMode = ThemeMode.dark;
    notifyListeners();
  }

  makeLight() {
    themeMode = ThemeMode.light;
    notifyListeners();
  }
}

final themeProvider = ChangeNotifierProvider((ref) => ThemeSwitcher());

