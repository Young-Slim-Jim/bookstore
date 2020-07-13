import 'dart:ui' as ui;

import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';

class AuthorCard extends StatefulWidget {
  final List<String> bild;
  final List<String> name;
  final List<String> books;

  AuthorCard(this.bild, this.books, this.name);

  @override
  _AuthorCardState createState() => _AuthorCardState();
}

class _AuthorCardState extends State<AuthorCard> {
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Container(
      height: height * 0.12,
      width: width * 0.7,
      decoration: BoxDecoration(
        color: const Color(0xfff5f5f5),
        borderRadius: BorderRadius.circular(15),
      ),
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Expanded(
              flex: 2,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(8.0),
                child: Image(
                  image: AssetImage(widget.bild[0]),
                  fit: BoxFit.fill,
                ),
              ),
            ),
            Expanded(
              flex: 5,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Expanded(
                    flex: 3,
                    child: RotateAnimatedTextKit(
                      repeatForever: true,
                      text: widget.name,
                      textAlign: TextAlign.center,
                      textStyle: TextStyle(fontSize: 20),
                      totalRepeatCount: 1,
                    ),
                  ),
                  Expanded(
                    flex: 3,
                    child: RotateAnimatedTextKit(
                      repeatForever: true,
                      text: widget.books,
                      textAlign: TextAlign.right,
                      textStyle: TextStyle(fontSize: 20),
                      totalRepeatCount: 1,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
