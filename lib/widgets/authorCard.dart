import 'dart:ui' as ui;

import 'package:flutter/material.dart';

class AuthorCard extends StatelessWidget {
  final String bild;
  final String name;
  final int books;

  AuthorCard(this.bild, this.books, this.name);
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
              flex: 1,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(8.0),
                child: Image(
                  image: AssetImage(bild),
                  fit: BoxFit.fill,
                ),
              ),
            ),
            Expanded(
              flex: 2,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Expanded(
                    child: CustomPaint(
                      size: Size.infinite,
                      painter: TextScrollPainter("Astrid Lindgren",
                          "Richard David Precht", "Dr. Jordan Peterson", 0.0),
                    ),
                  ),
                  Expanded(
                    child: Text(
                      "${books} Books",
                      style:
                          TextStyle(fontWeight: FontWeight.w300, fontSize: 15),
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

class TextScrollPainter extends CustomPainter {
  final String label1;
  final String label2;
  final String label3;
  double scrollPosition = 0.0;

  TextScrollPainter(this.label1, this.label2, this.label3, this.scrollPosition);

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }

  @override
  void paint(Canvas canvas, Size size) {
    final textStyle = ui.TextStyle(
      
      color: Colors.black,
      fontSize: 20,
    );
    
    final ui.Paragraph paragraph1 = _buildP(label1, size, textStyle);
    double lineheight = paragraph1.height;
    final Offset label1Offset = Offset(0, (size.height - lineheight) / 2);

    final ui.Paragraph paragraph2 = _buildP(label2, size, textStyle);
    final Offset label2Offset = label1Offset.translate(0, -size.height);

    canvas.drawParagraph(paragraph1, label1Offset);

    canvas.drawParagraph(paragraph2, label2Offset);
  }

  ui.Paragraph _buildP(String label, Size availableSpace, ui.TextStyle style) {
    final ui.ParagraphBuilder pbuilder = ui.ParagraphBuilder(
      ui.ParagraphStyle(
        maxLines: 1,
      ),
    )..pushStyle(style)..addText(label);

    return pbuilder.build()
      ..layout(
        ui.ParagraphConstraints(width: availableSpace.width),
      );
  }
}
