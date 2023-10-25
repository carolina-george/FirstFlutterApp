
import 'package:firstflutterproject/myThemeData.dart';
import 'package:firstflutterproject/provider/my_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class ThemingBottomSheet extends StatelessWidget {
  const ThemingBottomSheet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<MyProvider>(context);
    return Column(
      children: [
        InkWell(
          onTap: () {
            provider.changeTheme(ThemeMode.light);
            Navigator.pop(context);

          },
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Light",
                style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                    color: provider.theme == ThemeMode.light
                        ? Theme.of(context).colorScheme.background
                        : Theme.of(context).colorScheme.onPrimary),
              ),
              provider.theme == ThemeMode.light
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
            provider.changeTheme(ThemeMode.dark);
            Navigator.pop(context);
          },
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Dark",
                style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                    color: provider.theme == ThemeMode.dark
                        ? Theme.of(context).colorScheme.background
                        : Theme.of(context).colorScheme.onPrimary),
              ),
              provider.theme == ThemeMode.dark
                  ? Icon(Icons.done, color: MyThemeData.primary, size: 30)
                  : SizedBox.shrink(),
            ],
          ),
        ),
      ],
    );
  }
}
