import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class RadioTab extends StatelessWidget {
  const RadioTab({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(width: 40,height: 50),
        Image.asset("assets/images/radio_image.png"),
        SizedBox(width: 40,height: 50),
        Text("اذاعة القرأن الكريم",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold)),
        SizedBox(width: 40,height: 50),
        Image.asset("assets/images/Group 5.png"),
      ],
    );
  }
}
