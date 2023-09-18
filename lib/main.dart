import 'package:firstflutterproject/myThemeData.dart';
import 'package:firstflutterproject/sura_details.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: HomeScreen.routeName,
      routes: {
        HomeScreen.routeName: (context) => HomeScreen(),
        SuraDetails.RouteName:(context)=>SuraDetails(),
      },
      theme:MyThemeData.LightTheme,
      darkTheme: MyThemeData.DarkTheme,

    );
  }
}
