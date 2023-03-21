import 'package:flutter/material.dart';

import '../colors/colors.dart';

class AppTheme {
  static ThemeData lighttheme = ThemeData(
    scaffoldBackgroundColor: scaffoldBackgroundColorlight,
    colorScheme: const ColorScheme(
        brightness: Brightness.light,
        primary: Color(0xFF075FAB),
        onPrimary: Color(0xFFFFFFFF),
        secondary: Color(0xFF545F71),
        onSecondary: Color(0xFFFFFFFF),
        error: Color(0xFFBA1A1A),
        onError: Color(0xFFFFFFFF),
        background: Color(0xFFFDFCFF),
        onBackground: Color(0xFF1A1C1E),
        surface: Color(0xFFFDFCFF),
        onSurface: Color(0xFF1A1C1E)),
    appBarTheme: const AppBarTheme(
        backgroundColor: colorprimary,
        iconTheme: IconThemeData(
          color: Colors.white,
        ),
        titleTextStyle: TextStyle(
          color: Colors.white,
          fontSize: 24,
          fontFamily: 'Poppins',
        )),
    floatingActionButtonTheme: const FloatingActionButtonThemeData(
        backgroundColor: colorprimary,
        shape: StadiumBorder(side: BorderSide())),
    bottomAppBarTheme: const BottomAppBarTheme(color: Colors.white),
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        selectedIconTheme: IconThemeData(
          color: colorprimary,
          size: 35,
        ),
        selectedItemColor: colorprimary,
        unselectedIconTheme: IconThemeData(color: colorgrey, size: 24),
        unselectedItemColor: colorgrey),
    bottomSheetTheme: const BottomSheetThemeData(
        backgroundColor: Colors.white,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(25), topRight: Radius.circular(25)))),
    dropdownMenuTheme: const DropdownMenuThemeData(
        inputDecorationTheme: InputDecorationTheme(
          filled: true,
          fillColor: Colors.white,
          iconColor: colorprimary,
        ),
        textStyle: TextStyle(
            color: colorprimary, fontFamily: 'Poppins', fontSize: 20)),
    textTheme: const TextTheme(
      titleLarge:
          TextStyle(color: Colors.black, fontFamily: 'Poppins', fontSize: 24),
      titleMedium: TextStyle(
        color: Colors.black,
        fontFamily: 'Poppins',
        fontSize: 20,
      ),
      titleSmall:
          TextStyle(color: Colors.black, fontFamily: 'Poppins', fontSize: 18),
      bodyLarge:
          TextStyle(color: Colors.black, fontFamily: 'Poppins', fontSize: 14),
    ),
  );

  static ThemeData darktheme = ThemeData(
    scaffoldBackgroundColor: scaffoldBackgroundColordark,
    colorScheme: const ColorScheme(
        brightness: Brightness.dark,
        primary: Color(0xFFA4C9FF),
        onPrimary: Color(0xFF00315D),
        secondary: Color(0xFFBCC7DC),
        onSecondary: Color(0xFF263141),
        error: Color(0xFFFFB4AB),
        onError: Color(0xFF690005),
        background: Color(0xFF1A1C1E),
        onBackground: Color(0xFFE3E2E6),
        surface: Color(0xFF1A1C1E),
        onSurface: Color(0xFFE3E2E6)),
    appBarTheme: const AppBarTheme(
        backgroundColor: colorprimary,
        iconTheme: IconThemeData(
          color: scaffoldBackgroundColordark,
        ),
        titleTextStyle: TextStyle(
          color: scaffoldBackgroundColordark,
          fontSize: 24,
          fontFamily: 'Poppins',
        )),
    floatingActionButtonTheme: const FloatingActionButtonThemeData(
        backgroundColor: colorprimary,
        shape: StadiumBorder(side: BorderSide())),
    bottomAppBarTheme: const BottomAppBarTheme(color: colordark),
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        selectedIconTheme: IconThemeData(
          color: colorprimary,
          size: 35,
        ),
        selectedItemColor: colorprimary,
        unselectedIconTheme: IconThemeData(color: colorgrey, size: 24),
        unselectedItemColor: colorgrey),
    bottomSheetTheme: const BottomSheetThemeData(
        backgroundColor: colordark,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(25), topRight: Radius.circular(25)))),
    dropdownMenuTheme: const DropdownMenuThemeData(
        inputDecorationTheme: InputDecorationTheme(
            filled: true, fillColor: colordark, iconColor: colorprimary),
        textStyle: TextStyle(
            color: colorprimary, fontFamily: 'Poppins', fontSize: 20)),
    textTheme: const TextTheme(
      titleLarge:
          TextStyle(color: Colors.white, fontFamily: 'Poppins', fontSize: 24),
      titleMedium: TextStyle(
        color: Colors.white,
        fontFamily: 'Poppins',
        fontSize: 20,
      ),
      titleSmall:
          TextStyle(color: Colors.white, fontFamily: 'Poppins', fontSize: 18),
      bodyLarge:
          TextStyle(color: Colors.white, fontFamily: 'Poppins', fontSize: 14),
    ),
  );
}
