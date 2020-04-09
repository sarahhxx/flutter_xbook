import 'package:flutter/material.dart';

class BookshelfScene extends StatefulWidget {
  BookshelfScene({Key key, this.title}) : super(key: key);
  final String title;

  @override
  State<StatefulWidget> createState() => BookshelfSceneState();
}

class BookshelfSceneState extends State<BookshelfScene> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
        ),
        body: Center(
          child: Column(),
        ) // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}