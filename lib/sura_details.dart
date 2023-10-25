import 'package:firstflutterproject/myThemeData.dart';
import 'package:firstflutterproject/provider/mySuraProvider.dart';
import 'package:firstflutterproject/sura_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';

class SuraDetails extends StatefulWidget {
  static const String RouteName = "SuraDetails";

  @override
  State<SuraDetails> createState() => _SuraDetailsState();
}

class _SuraDetailsState extends State<SuraDetails> {

  @override
  Widget build(BuildContext context) {
    var args = ModalRoute.of(context)?.settings.arguments as SuraModel;
    //if (provider.verses.isEmpty) {
    //  provider.loadFile(args.index);
     //}

    return ChangeNotifierProvider(
      create: (context)=>SuraDetailsProvider()..loadFile(args.index),

      builder: (context,child){
        var provider=Provider.of<SuraDetailsProvider>(context);
        return Container(
  decoration: BoxDecoration(
      image: DecorationImage(
          image: AssetImage("assets/images/background.png"),
          fit: BoxFit.fill)),
  child: Scaffold(
    appBar: AppBar(
      title: Text(args.name, style: Theme.of(context).textTheme.bodyLarge),
    ),
    body: Card(
      elevation: 14,
      margin: EdgeInsets.all(18),
      shape: OutlineInputBorder(
        borderRadius: BorderRadius.circular(25),
        borderSide: BorderSide(color: MyThemeData.primary),
      ),
      child: ListView.separated(
        separatorBuilder: (context, index) =>
            Divider(thickness: 1, endIndent: 40, indent: 40),
        itemBuilder: (context, index) {
          return Directionality(
              textDirection: TextDirection.rtl,
              child: Text("${provider.verses[index]}(${index + 1})",
                  textAlign: TextAlign.center));
        },
        itemCount: provider.verses.length,
      ),
    ),
  ),
);
      },
    );
  }


}
