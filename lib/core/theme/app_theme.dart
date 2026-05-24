import 'package:flutter/material.dart';

class AppTheme {
  static final ThemeData customtheme = ThemeData(
    useMaterial3: true,
    colorScheme: ColorScheme.dark(
      surface: Color(0xffEFEEEE),
      primary: Color(0xffFEFFFE),
      secondary: Colors.black,
      onPrimary: Color(0xffC4E8F5),
      tertiary: Color(0xffCAD9A9),
      onSecondary: Color(0xffE6A58A),
      onTertiary: Color(0xffE2574D),
    ),
    textTheme: TextTheme(
      displayLarge: TextStyle(
        fontSize: 57,
        fontWeight: FontWeight.w700,
        height: 1.12,
      ),

      displayMedium: TextStyle(
        fontSize: 45,
        fontWeight: FontWeight.w700,
        height: 1.16,
      ),

      displaySmall: TextStyle(
        fontSize: 36,
        fontWeight: FontWeight.w600,
        height: 1.22,
      ),

      // Headline
      headlineLarge: TextStyle(
        fontSize: 32,
        fontWeight: FontWeight.w700,
        height: 1.25,
      ),

      headlineMedium: TextStyle(
        fontSize: 28,
        fontWeight: FontWeight.w700,
        height: 1.28,
        fontFamily: 'poppins',
      ),

      headlineSmall: TextStyle(
        fontSize: 24,
        fontWeight: FontWeight.w600,
        height: 1.3,
        fontFamily: 'poppins',
      ),

      // Title
      titleLarge: TextStyle(
        fontSize: 22,
        fontWeight: FontWeight.w600,
        height: 1.27,
        fontFamily: 'poppins',
      ),

      // Body
      bodyLarge: TextStyle(
        fontSize: 18,
        fontWeight: FontWeight.w400,
        height: 1.5,
        fontFamily: 'mons',
        letterSpacing: 0.5,
      ),

      bodyMedium: TextStyle(
        fontSize: 14,
        fontWeight: FontWeight.w400,
        height: 1.43,
        letterSpacing: 0.25,
        fontFamily: 'mons',
      ),

      bodySmall: TextStyle(
        fontSize: 12,
        fontWeight: FontWeight.w400,
        height: 1.33,
        fontFamily: 'mons',

        letterSpacing: 0.4,
      ),

      // Label
      labelLarge: TextStyle(
        fontSize: 14,
        fontWeight: FontWeight.w500,
        height: 1.43,
        letterSpacing: 0.1,
      ),

      labelMedium: TextStyle(
        fontSize: 12,
        fontWeight: FontWeight.w500,
        height: 1.33,
        letterSpacing: 0.5,
      ),

      labelSmall: TextStyle(
        fontSize: 11,
        fontWeight: FontWeight.w500,
        height: 1.45,
        letterSpacing: 0.5,
      ),
    ),
  );
}
