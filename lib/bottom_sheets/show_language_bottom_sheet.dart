import 'package:firstflutterproject/myThemeData.dart';
import 'package:firstflutterproject/provider/my_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class ShowLanguageBottomSheet extends StatelessWidget {
  const ShowLanguageBottomSheet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<MyProvider>(context);
    return Column(
      children: [
        InkWell(
          onTap: () {
            provider.changeLanguage("en");
            Navigator.pop(context);
          },
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                AppLocalizations.of(context)!.english,
                style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                    color: provider.local == "en"
                        ? MyThemeData.primary
                        : MyThemeData.blackColor),
              ),
              provider.local == "en"
                  ? Icon(
                      Icons.done,
                      color: MyThemeData.primary,
                      size: 30,
                    )
                  : SizedBox.shrink(),
            ],
          ),
        ),
        InkWell(
          onTap: () {
            provider.changeLanguage("ar");
            Navigator.pop(context);
          },
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                AppLocalizations.of(context)!.arabic,
                style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                    color: provider.local == "ar"
                        ? MyThemeData.primary
                        : MyThemeData.blackColor),
              ),
              provider.local == "ar"
                  ? Icon(Icons.done, color: MyThemeData.primary, size: 30)
                  : SizedBox.shrink(),
            ],
          ),
        ),
      ],
    );
  }
}
