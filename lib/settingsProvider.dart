import 'package:flutter/material.dart';

class Settingsprovider extends ChangeNotifier{
  bool _isDark = false;

  bool get isDark => _isDark;
  void toggleTheme() {
    _isDark = !_isDark;
    notifyListeners();
  }

}