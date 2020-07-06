import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

class Book extends StatelessWidget {
  final String bild;
  final String titel;
  final String autor;

  Book(this.autor, this.titel, this.bild);

  @override
  Widget build(BuildContext context) {
    var sizegroup = AutoSizeGroup();
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 20),
      child: Container(
        width: width * 0.45,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              height: height * 0.3,
              width: width,
              child: Image(
                image: AssetImage(bild),
                fit: BoxFit.fill,
              ),
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.7),
                    spreadRadius: 2,
                    blurRadius: 7,
                    offset: Offset(10, 10),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 20, bottom: 8),
              child: AutoSizeText(
                titel,
                maxLines: 1,
                group: sizegroup,
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
            AutoSizeText(
              autor,
              group: sizegroup,
              style: TextStyle(fontWeight: FontWeight.w300),
            ),
          ],
        ),
      ),
    );
  }
}
