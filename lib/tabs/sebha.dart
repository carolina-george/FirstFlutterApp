import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SebhaTab extends StatefulWidget {
  @override
  State<SebhaTab> createState() => _SebhaTabState();
}

class _SebhaTabState extends State<SebhaTab> {
  List<String> word = ["سبحان الله"];
  int count = 0;

  void incrementCount() {
    setState(() {
      count++;
      if (count >= 30) {
        word = ["الحمد لله"];
      }
      if (count >= 40) {
        word = ["الله اكبر"];
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          InkWell(onTap: incrementCount,
              child: Image.asset("assets/images/sebha_image.png")),
          SizedBox(width: 10, height: 10),
          Text(
            "عدد التسبيحات",
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 16),
          ElevatedButton(
            onPressed:(){},
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all<Color>(Colors.brown),
            ),
            child: Text(
              "$count",
              style: TextStyle(color: Colors.white),
            ),
          ),
          SizedBox(height: 8),
          ElevatedButton(
            onPressed: () {},
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all<Color>(Colors.brown),
            ),
            child: Text(
              "${word[0]}",
              style: TextStyle(color: Colors.white),
            ),
          ),
        ],
      ),
    );
  }
}
