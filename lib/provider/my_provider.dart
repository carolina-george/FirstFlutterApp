import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyProvider extends ChangeNotifier {
  String local = "en";
  ThemeMode theme=ThemeMode.light;
  changeTheme(ThemeMode mode){
    theme=mode;
    notifyListeners();
  }
  changeLanguage(String LangCode) {
    local = LangCode;
    notifyListeners();
  }
}
