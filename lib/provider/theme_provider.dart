import 'package:flutter/material.dart';

class ThemeProvider extends ChangeNotifier {
  ThemeMode _mode = ThemeMode.light;

  ThemeMode get themeMode => _mode;

  void toggleMode(){
    _mode = (_mode==ThemeMode.dark)?ThemeMode.light:ThemeMode.dark;
    notifyListeners();
  }
}