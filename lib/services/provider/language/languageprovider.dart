import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LanguageProvider extends ChangeNotifier {
  String currentlang = 'en';
  void changelang(String newlang) async {
    currentlang = newlang;
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setString('language', currentlang);
    notifyListeners();
  }
}
