import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyThemeData {
  static const Color primary = Color(0xffB7935F);
  static const Color blackColor = Color(0xff242424);
  static const Color WhiteColor = Color(0xffffffffff);

  static ThemeData LightTheme = ThemeData(
      scaffoldBackgroundColor: Colors.transparent,
      appBarTheme: AppBarTheme(
        iconTheme: IconThemeData(color:blackColor),
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
            fontSize: 20,
            fontWeight: FontWeight.w100,
            color: WhiteColor),
      ),
      bottomNavigationBarTheme: BottomNavigationBarThemeData(backgroundColor:
      primary,selectedItemColor: blackColor,
      unselectedItemColor: WhiteColor),
  );

  static ThemeData DarkTheme = ThemeData(
      scaffoldBackgroundColor: Colors.transparent,
      appBarTheme: AppBarTheme(
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),
      textTheme: TextTheme(
        bodyLarge: GoogleFonts.elMessiri(
            fontSize: 30,
            fontWeight: FontWeight.bold,
            color: Color(0xff242424)),
        bodySmall: GoogleFonts.elMessiri(
            fontSize: 20,
            fontWeight: FontWeight.w100,
            color: Color(0xffFFFFFFFF)),
      ));

}
