import 'package:firstflutterproject/myThemeData.dart';
import 'package:firstflutterproject/provider/my_provider.dart';
import 'package:firstflutterproject/tabs/quran.dart';
import 'package:firstflutterproject/tabs/radio.dart';
import 'package:firstflutterproject/tabs/sebha.dart';
import 'package:firstflutterproject/tabs/ahades.dart';
import 'package:firstflutterproject/tabs/settings.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:provider/provider.dart';
class HomeScreen extends StatefulWidget {
  static const String routeName = "Home";
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}
class _HomeScreenState extends State<HomeScreen> {
int flag=0;

  @override
  Widget build(BuildContext context) {
    var provider=Provider.of<MyProvider>(context);
    return Stack(
      children: [
        Image.asset(
          provider.theme==ThemeMode.light?
          "assets/images/background.png":"assets/images/bg.png",
          width: double.infinity,
          fit: BoxFit.fill,
        ),
        Scaffold(
          appBar: AppBar(
            title: Text(
              AppLocalizations.of(context)!.appTiltle,
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
                  ,backgroundColor:Theme.of(context).colorScheme.primary),
              BottomNavigationBarItem(icon: ImageIcon(AssetImage("assets/images/radio.png")),label:"radio"
                  ,backgroundColor:Theme.of(context).colorScheme.primary),
              BottomNavigationBarItem(icon: ImageIcon(AssetImage("assets/images/sebha.png")),label:"sebha"
                  ,backgroundColor:Theme.of(context).colorScheme.primary),
              BottomNavigationBarItem(icon:ImageIcon(AssetImage("assets/images/ahades.png")),label:"ahades"
                  ,backgroundColor:Theme.of(context).colorScheme.primary),
              BottomNavigationBarItem(icon:Icon(Icons.settings),label:"settings",
                  backgroundColor:Theme.of(context).colorScheme.primary),
            ],
          ),
          body: Tabs[flag],
        ),
      ],
    );
  }
  List<Widget> Tabs=[QuranTab(),RadioTab(),SebhaTab(),AhadesTab(),SettingsTab()];
}
