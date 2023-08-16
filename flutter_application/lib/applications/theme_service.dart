// in the theme service we want now to create a service that provides two things.
//One is the information if we are in dark or light mode.
// And the second thing, we want to have a function to toggle between dark and light mode.

import 'package:flutter/material.dart';

class ThemeService extends ChangeNotifier {
  bool isDarkMode = false;

//  change notifier basically not only comes from the provider package, it comes from the material
// package and it provides us information, not information functions.
// And we can use one function that is notify listeners.
// And what this will basically do is we toggle the theme and then after toggling the value of the theme
// of the state, we will notify listeners.
// That means everyone that listens on this theme service for changes will get the information.
// Hey, we made changes.
  void toggleTheme() {
    isDarkMode = !isDarkMode; // if true then false,  vice versa
    notifyListeners();
  }
}
