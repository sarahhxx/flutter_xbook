import 'package:flutter/material.dart';

class HomeScene extends StatefulWidget {
  HomeScene({Key key, this.title}) : super(key: key);
  final String title;

  @override
  HomeSceneState createState() => HomeSceneState();
}

class HomeSceneState extends State<HomeScene> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("书城"),
        ),
        body: Center(
          child: Column(),
        ) // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}