import 'package:flutter/material.dart';

extension CustomThemeData on ThemeData {
  bool get isDarkMode => brightness == Brightness.dark;
  Color get textColor => isDarkMode ? Colors.white : Colors.black;
}
