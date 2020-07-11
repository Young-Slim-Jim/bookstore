import 'package:bookstore/widgets/authorCard.dart';
import 'package:bookstore/widgets/book.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: const Color(0xfff5f5f5),
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(height * 0.15),
        child: DefaultTabController(
          length: 3,
          child: AppBar(
            flexibleSpace: Padding(
              padding: const EdgeInsets.only(bottom: 50, left: 35),
              child: Align(
                alignment: Alignment.bottomLeft,
                child: Text(
                  "Discover Books",
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w900,
                      fontSize: 40),
                ),
              ),
            ),
            backgroundColor: Colors.white,
            bottom: TabBar(
              tabs: [
                FittedBox(
                  fit: BoxFit.scaleDown,
                  child: Tab(
                    text: "Classics",
                  ),
                ),
                FittedBox(
                  fit: BoxFit.scaleDown,
                  child: Tab(text: "New"),
                ),
                FittedBox(
                  fit: BoxFit.scaleDown,
                  child: Tab(text: "Upcoming"),
                ),
              ],
              labelColor: Colors.black,
              labelStyle: TextStyle(fontSize: 11, letterSpacing: 2.5),
              indicatorColor: const Color(0xffc70039),
            ),
          ),
        ),
      ),
      body: Column(
        children: <Widget>[
          Expanded(
            flex: 5,
            child: Padding(
              padding: const EdgeInsets.only(
                top: 40,
              ),
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: <Widget>[
                  Book("Heinrich Heine", "Das Märchen meines Lebens",
                      "lib/covers/maerchenmeineslebens.jpg"),
                  Book("Deborah Levy", "Was das Leben kostet",
                      "lib/covers/waskostetdasleben.jpg"),
                  Book("Siegfried Lenz", "Fundbüro", "lib/covers/fundburo.jpg")
                ],
              ),
            ),
          ),
          Expanded(
            flex: 3,
            child: Container(
              width: width,
              color: Colors.white,
              child: Column(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 10.0, vertical: 10.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text(
                          "Authors to follow",
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 25),
                        ),
                        Text(
                          "Show all",
                          style: TextStyle(
                              color: const Color(0xffdddddd),
                              fontWeight: FontWeight.w300,
                              fontSize: 25),
                        ),
                      ],
                    ),
                  ),
                  AuthorCard("lil", 25, "Astrod"),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
