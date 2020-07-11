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
      height: height * 0.1,
      width: width * 0.6,
      decoration: BoxDecoration(
        color: const Color(0xfff5f5f5),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Row(),
    );
  }
}
