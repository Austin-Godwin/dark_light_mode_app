import 'package:flutter/material.dart';
import '../../utils/theme.dart';

class HomeViewModel extends ChangeNotifier {
  ThemeMode themeMode = ThemeMode.system;
  bool get isDarkMode => themeMode == ThemeMode.dark;
  // bool onSwitched = false;
  int counter = 0;

  void incrementCounter() {
    counter++;
    notifyListeners();
  }

  onToggle(bool isOn) {
    themeMode = isOn ? ThemeMode.dark : ThemeMode.light;
    notifyListeners();
    // if (!onSwitched) {
    //   onSwitched = true;
    //   CustomTheme.lightTheme();
    //   notifyListeners();
    // } else {
    //   onSwitched = false;
    //   CustomTheme.darkTheme();
    //   notifyListeners();
    // }
    // onSwitched = value;
  }
}
