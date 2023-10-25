
import 'package:firstflutterproject/ahadeth_details.dart';
import 'package:firstflutterproject/myThemeData.dart';
import 'package:firstflutterproject/provider/mySuraProvider.dart';
import 'package:firstflutterproject/provider/my_provider.dart';
import 'package:firstflutterproject/sura_details.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:provider/provider.dart';
import 'home.dart';

void main() {
  runApp(
     MultiProvider(providers: [
       ChangeNotifierProvider(create: (context)=>MyProvider(),),
      // ChangeNotifierProvider(create: (context)=>SuraDetailsProvider()),
     ],
         child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    var provider=Provider.of<MyProvider>(context);
    return MaterialApp(
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
      locale: Locale(provider.local),
      debugShowCheckedModeBanner: false,
      initialRoute: HomeScreen.routeName,
      routes: {
        HomeScreen.routeName: (context) => HomeScreen(),
        SuraDetails.RouteName: (context) => SuraDetails(),
        HadethDetails.routeName: (context) => HadethDetails(),
      },
      themeMode: provider.theme,
      theme: MyThemeData.LightTheme,
      darkTheme: MyThemeData.DarkTheme,
    );
  }
}
