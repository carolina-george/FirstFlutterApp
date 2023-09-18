import 'package:firstflutterproject/myThemeData.dart';
import 'package:firstflutterproject/tabs/quran.dart';
import 'package:firstflutterproject/tabs/radio.dart';
import 'package:firstflutterproject/tabs/sebha.dart';
import 'package:firstflutterproject/tabs/ahades.dart';
import 'package:firstflutterproject/tabs/settings.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeScreen extends StatefulWidget {
  static const String routeName = "Home";

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
int flag=0;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset(
          "assets/images/background.png",
          width: double.infinity,
          fit: BoxFit.fill,
        ),
        Scaffold(
          appBar: AppBar(
            title: Text(
              "ASLAMi",
              style:Theme.of(context).textTheme.bodyLarge
            ),
          ),
          bottomNavigationBar: BottomNavigationBar(
            currentIndex: flag,
            onTap:(value){
              flag=value;
              setState(() {
              });
            },
            items: [
              BottomNavigationBarItem(icon: ImageIcon(AssetImage("assets/images/quran.png")),label:"quran"
                  ,backgroundColor:MyThemeData.primary),
              BottomNavigationBarItem(icon: ImageIcon(AssetImage("assets/images/radio.png")),label:"radio"
                  ,backgroundColor:MyThemeData.primary),
              BottomNavigationBarItem(icon: ImageIcon(AssetImage("assets/images/sebha.png")),label:"sebha"
                  ,backgroundColor:MyThemeData.primary),
              BottomNavigationBarItem(icon:ImageIcon(AssetImage("assets/images/ahades.png")),label:"ahades"
                  ,backgroundColor:MyThemeData.primary),
              BottomNavigationBarItem(icon:Icon(Icons.settings),label:"settings",
                  backgroundColor:MyThemeData.primary),
            ],
          ),
          body: Tabs[flag],
        ),
      ],
    );
  }
  List<Widget> Tabs=[QuranTab(),RadioTab(),SebhaTab(),AhadesTab(),SettingsTab()];
}
