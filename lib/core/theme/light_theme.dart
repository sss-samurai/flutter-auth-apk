import 'package:flutter/material.dart';

// Universal appealing light theme palette
final Color lightBg = Color(0xFFF5F7FA); // scaffold background
final Color lightCard = Color(0xFFFFFFFF); // cards, text fields
final Color lightPrimary = Color(0xFF0D6EFD); // buttons, AppBar
final Color lightAccent = Color(0xFF5BC0EB); // secondary buttons/icons
final Color lightText = Color(0xFF1A1A1A); // primary text
final Color lightTextSecondary = Color(0xFF555555); // secondary text

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
    elevation: 2,
  ),
  textTheme: TextTheme(
    bodyLarge: TextStyle(color: lightText),
    bodyMedium: TextStyle(color: lightTextSecondary),
    titleLarge: TextStyle(color: lightText, fontWeight: FontWeight.bold),
    titleMedium: TextStyle(color: lightTextSecondary),
  ),
  cardColor: lightCard,
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      backgroundColor: lightPrimary,
      foregroundColor: Colors.white,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
      padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 24),
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
