import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ThemeProvider extends ChangeNotifier {
  ThemeMode currenttheme = ThemeMode.light;
  void changetheme(ThemeMode newtheme) async {
    currenttheme = newtheme;
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setString(
        'theme', currenttheme == ThemeMode.light ? "light" : "dark");
    notifyListeners();
  }
}
