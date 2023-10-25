
import 'package:firstflutterproject/bottom_sheets/show_theme_bottom_sheet.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:firstflutterproject/bottom_sheets/show_language_bottom_sheet.dart';
import 'package:firstflutterproject/myThemeData.dart';
import 'package:firstflutterproject/provider/my_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class SettingsTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var pro = Provider.of<MyProvider>(context);
    return Padding(
      padding: const EdgeInsets.all(18.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text("Language"),
          InkWell(
            onTap: () {
              showLanguageBottomSheet(context);
            },
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: 18),
              padding: EdgeInsets.symmetric(horizontal: 12),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                border: Border.all(color: MyThemeData.primary),
              ),
              child: Text(pro.local == "en"
                  ? AppLocalizations.of(context)!.english
                  : AppLocalizations.of(context)!.arabic),
            ),
          ),
          SizedBox(height: 18),
          Text("Mode"),
          InkWell(
            onTap: () {
              showThemingBottomSheet(context);},
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: 18),
              padding: EdgeInsets.symmetric(horizontal: 12),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                border: Border.all(color: MyThemeData.primary),
              ),
              child: Text(pro.theme==ThemeMode.light?"Light":"Dark"),
            ),
          ),
        ],
      ),
    );
  }

  void showLanguageBottomSheet(BuildContext context) {
    showModalBottomSheet(
      context: context,
      //isScrollControlled: true,
      shape: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.transparent),
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(18), topRight: Radius.circular(18))),
      builder: (context) {
        return ShowLanguageBottomSheet();
      },
    );
  }

  void showThemingBottomSheet(BuildContext context) {
    showModalBottomSheet(
      context: context,
      //isScrollControlled: true,
      shape: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.transparent),
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(18), topRight: Radius.circular(18))),
      builder: (context) {
        return ThemingBottomSheet();
      },
    );
  }
}
