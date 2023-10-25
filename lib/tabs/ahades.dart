import 'package:firstflutterproject/ahadeth_details.dart';
import 'package:firstflutterproject/hadeth_model.dart';
import 'package:firstflutterproject/myThemeData.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
class AhadesTab extends StatefulWidget {
  @override
  State<AhadesTab> createState() => _AhadesTabState();
}

class _AhadesTabState extends State<AhadesTab> {
  List<HadethModel> allHadeth = [];

  @override
  Widget build(BuildContext context) {
    loadHadeth();
    return Column(
      children: [
        Image.asset("assets/images/ahadeth_image.png"),
        Divider(
          thickness: 3,
          color: MyThemeData.primary,
        ),
        Text(
          AppLocalizations.of(context)!.ahadeth,
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
        ),
        Divider(
          thickness: 3,
          color: MyThemeData.primary,
        ),
        Expanded(
          child: ListView.separated(
            separatorBuilder: (context, index) => Divider(
              thickness: 1,
              endIndent: 40,
              indent: 40,
              color: MyThemeData.primary,
            ),
            itemBuilder: (context, index) {
              return InkWell(
                  onTap: () {
                    Navigator.pushNamed(context, HadethDetails.routeName,
                        arguments: allHadeth[index]);
                  },
                  child: Text(allHadeth[index].title,
                      textAlign: TextAlign.center));
            },
            itemCount: allHadeth.length,
          ),
        )
      ],
    );
  }

  loadHadeth() async {
    rootBundle.loadString("assets/files/ahadeth.txt").then((ahadeth) {
      List<String> ahadethlist = ahadeth.split("#");
      for (int i = 0; i <= ahadethlist.length; i++) {
        String hadeth1 = ahadethlist[i];
        List<String> hadethOneLines = hadeth1.trim().split("\n");
        String title = hadethOneLines[0];
        hadethOneLines.removeAt(0);
        List<String> content = hadethOneLines;
        HadethModel hadethModel = HadethModel(title, content);
        allHadeth.add(hadethModel);
        setState(() {});
      }
    }).catchError((e) {
      print(e.toString());
    });
  }
}
