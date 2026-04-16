import 'package:flutter/material.dart';

final lightTheme = ThemeData(
  brightness: Brightness.light,
  scaffoldBackgroundColor: Colors.white,
  fontFamily: "Poppins",
);
final darkTheme = ThemeData(
  brightness: Brightness.dark,
  scaffoldBackgroundColor: Colors.black,
  fontFamily: "Poppins",
  appBarTheme: const AppBarTheme(
    backgroundColor: Colors.white,
    foregroundColor: Colors.white,
  ),

  textTheme: const TextTheme(
    bodyLarge: TextStyle(color: Colors.white),
    bodyMedium: TextStyle(color: Colors.white),
  ),

  iconTheme: const IconThemeData(color: Colors.white),
);
bool isDarkMode(BuildContext context) {
  return Theme.of(context).brightness == Brightness.dark;
}
