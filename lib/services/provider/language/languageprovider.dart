import 'package:flutter/material.dart';

class LanguageProvider extends ChangeNotifier {
  String currentlang = 'en';
  void changelang(String newlang) {
    currentlang = newlang;
    notifyListeners();
  }
}
