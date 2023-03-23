import 'package:flutter/material.dart';

class ThemeProvider extends ChangeNotifier {
  ThemeMode currenttheme = ThemeMode.light;
  void changetheme(ThemeMode newtheme) {
    currenttheme = newtheme;
    notifyListeners();
  }
}
