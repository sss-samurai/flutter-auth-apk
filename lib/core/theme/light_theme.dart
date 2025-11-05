import 'package:flutter/material.dart';

final Color lightBg = Color(0xFFF5EBE0); // f5ebe0 - scaffold background
final Color lightCard = Color(0xFFEDEDE9); // edede9 - cards, text fields
final Color lightPrimary = Color(0xFFD5BDAF); // d5bdaf - buttons, focus, appBar
final Color lightAccent = Color(
  0xFFD6CCC2,
); // d6ccc2 - secondary buttons, icons
final Color lightText = Color(0xFF415A77); // 415a77 - text

final ThemeData lightTheme = ThemeData(
  brightness: Brightness.light,
  scaffoldBackgroundColor: lightBg,
  colorScheme: ColorScheme.light(
    primary: lightPrimary,
    secondary: lightAccent,
    background: lightBg,
    surface: lightCard,
    onPrimary: Colors.white,
    onSecondary: Colors.white,
    onBackground: lightText,
    onSurface: lightText,
  ),
  appBarTheme: AppBarTheme(
    backgroundColor: lightPrimary,
    foregroundColor: Colors.white,
  ),
  textTheme: TextTheme(
    bodyLarge: TextStyle(color: lightText),
    bodyMedium: TextStyle(color: lightText.withOpacity(0.7)),
  ),
  cardColor: lightCard,
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      backgroundColor: lightPrimary,
      foregroundColor: Colors.white,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
    ),
  ),
  inputDecorationTheme: InputDecorationTheme(
    filled: true,
    fillColor: lightCard,
    focusedBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(12),
      borderSide: BorderSide(color: lightPrimary, width: 2),
    ),
    enabledBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(12),
      borderSide: BorderSide(color: Colors.transparent, width: 0),
    ),
    contentPadding: const EdgeInsets.symmetric(vertical: 16, horizontal: 12),
  ),
);
