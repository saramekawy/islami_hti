import 'package:flutter/material.dart';

class MyProvider extends ChangeNotifier {
  int counter = 30;
  int value = 0;
  ThemeMode themeMode = ThemeMode.light;
  AssetImage lightModeImage = AssetImage("assets/images/main_bg.png");
  AssetImage DarkModeImage = AssetImage("assets/images/main_bg.png");

  List<String> azkar = ["سبحان الله", "الله اكبر", "الحمدلله", "done"];
  String language = 'en';
  String zekrContent = "سبحان الله";

  void changeLanguage(String lang) {
    language = lang;
    notifyListeners();
  }

  int updateCounter() {
    ++value;
    for (int i = 0; i < 3; i++) {
      if (counter == 1) {
        counter = 31;
      }
      if (value < 30) {
        zekrContent = azkar[0];
        return --counter;
      } else if (value < 60) {
        zekrContent = azkar[1];
        return --counter;
      } else if (value < 90) {
        zekrContent = azkar[2];
        return --counter;
      } else {
        zekrContent = azkar[3];
        counter = 0;
      }
      return counter;
    }
    return 55;
  }

  void restart() {
    counter = 31;
    value = -1;
    updateCounter();
  }

  void changeTheme(ThemeMode theme) {
    themeMode = theme;
    notifyListeners();
  }
}
