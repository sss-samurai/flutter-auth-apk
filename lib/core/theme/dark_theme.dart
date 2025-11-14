import 'package:flutter/material.dart';

// Universal appealing dark theme palette
final Color darkBg = Color(0xFF121212); // background
final Color darkCard = Color(0xFF1E1E1E); // cards, text fields
final Color darkPrimary = Color(0xFF0D6EFD); // buttons, AppBar
final Color darkAccent = Color(0xFF5BC0EB); // icons, highlights
final Color darkText = Color(0xFFE0E0E0); // primary text
final Color darkTextSecondary = Color(0xFFB0B0B0); // secondary text

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
    bodyMedium: TextStyle(color: darkTextSecondary),
    titleLarge: TextStyle(color: darkText, fontWeight: FontWeight.bold),
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
