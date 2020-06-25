import 'package:flutter/material.dart';

class Book extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Container(
      height: height* 0.45,
      width: width * 0.5,
      child: Column(
        children: <Widget>[
          Container(
            child: Image(
              image: AssetImage("lib/covers/maerchenmeineslebens.jpg"),
            ),
          ),
          FittedBox(
            fit: BoxFit.fitWidth,
            child: Text(
              "Das Märchen meines Lebens",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ),
          Text("Heinrich Heine"),
        ],
      ),
    );
  }
}
