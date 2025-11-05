import 'package:flutter/material.dart';

final Color darkBg = Color(0xFF0D1B2A); // 0d1b2a - scaffold background
final Color darkCard = Color(0xFF1B263B); // 1b263b - cards, text fields
final Color darkPrimary = Color(0xFF778DA9); // 778da9 - buttons, focus, appBar
final Color darkAccent = Color(0xFF415A77); // 415a77 - secondary buttons, icons
final Color darkText = Color(0xFFE0E1DD); // e0e1dd - text

final ThemeData darkTheme = ThemeData(
  brightness: Brightness.dark,
  scaffoldBackgroundColor: darkBg,
  colorScheme: ColorScheme.dark(
    primary: darkPrimary,
    secondary: darkAccent,
    background: darkBg,
    surface: darkCard,
    onPrimary: Colors.white,
    onSecondary: Colors.white,
    onBackground: darkText,
    onSurface: darkText,
  ),
  appBarTheme: AppBarTheme(
    backgroundColor: darkPrimary,
    foregroundColor: Colors.white,
  ),
  textTheme: TextTheme(
    bodyLarge: TextStyle(color: darkText),
    bodyMedium: TextStyle(color: darkText.withOpacity(0.7)),
  ),
  cardColor: darkCard,
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      backgroundColor: darkPrimary,
      foregroundColor: Colors.white,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
    ),
  ),
  inputDecorationTheme: InputDecorationTheme(
    filled: true,
    fillColor: darkCard,
    focusedBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(12),
      borderSide: BorderSide(color: darkPrimary, width: 2),
    ),
    enabledBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(12),
      borderSide: BorderSide(color: Colors.transparent, width: 0),
    ),
    contentPadding: const EdgeInsets.symmetric(vertical: 16, horizontal: 12),
  ),
);
