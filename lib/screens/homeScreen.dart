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
    return Scaffold(
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
                  "Homepage",
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 50),
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
      body: Padding(
        padding: const EdgeInsets.all(8.0),
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
    );
  }
}
