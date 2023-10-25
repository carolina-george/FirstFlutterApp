import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyThemeData {
  static const Color primary = Color(0xffB7935F);
  static const Color darkprimary = Color(0xff0f1424);
  static const Color darkyellow=Color(0xffFACC1D);
  static const Color blackColor = Color(0xff242424);
  static const Color WhiteColor = Color(0xffffffffff);

  static ThemeData LightTheme = ThemeData(
    colorScheme:const ColorScheme(
      brightness:Brightness.light,
      primary: primary,
      onPrimary: Colors.black54,
      secondary: blackColor,
      onSecondary: WhiteColor,
      error: Colors.red,
      onError: WhiteColor,
      background: primary,
      onBackground: Colors.grey,
      surface: Colors.blueGrey,
      onSurface: WhiteColor,
    ),
    scaffoldBackgroundColor: Colors.transparent,
    appBarTheme: AppBarTheme(
      iconTheme: IconThemeData(color: blackColor),
      centerTitle: true,
      elevation: 0,
      backgroundColor: Colors.transparent,
    ),
    textTheme: TextTheme(
      bodyLarge: GoogleFonts.elMessiri(
        fontSize: 30,
        fontWeight: FontWeight.bold,
        color: blackColor,
      ),
      bodySmall: GoogleFonts.elMessiri(
          fontSize: 20, fontWeight: FontWeight.w100, color: WhiteColor),
    ),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
        type: BottomNavigationBarType.shifting,
        backgroundColor: primary,
        selectedItemColor: blackColor,
        unselectedItemColor: WhiteColor),
  );

  static ThemeData DarkTheme = ThemeData(
    colorScheme:const ColorScheme(
      brightness:Brightness.dark,
      primary: darkprimary,
      onPrimary: WhiteColor,
      secondary: darkyellow,
      onSecondary: WhiteColor,
      error: Colors.red,
      onError: WhiteColor,
      background: darkyellow,
      onBackground: Colors.grey,
      surface: Colors.blueGrey,
      onSurface: WhiteColor,
    ),
    scaffoldBackgroundColor: Colors.transparent,
    appBarTheme: AppBarTheme(
      iconTheme: IconThemeData(color: WhiteColor),
      centerTitle: true,
      elevation: 0,
      backgroundColor: Colors.transparent,
    ),
    textTheme: TextTheme(
      bodyLarge: GoogleFonts.elMessiri(
        fontSize: 30,
        fontWeight: FontWeight.bold,
        color: WhiteColor,
      ),
      bodySmall: GoogleFonts.elMessiri(
          fontSize: 20, fontWeight: FontWeight.w100, color: darkyellow),
    ),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
        type: BottomNavigationBarType.shifting,
        backgroundColor: darkprimary,
        selectedItemColor: darkyellow,
        unselectedItemColor: WhiteColor),
  );
}
