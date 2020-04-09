import 'package:flutter/material.dart';

class MeScene extends StatefulWidget {
  MeScene({Key key, this.title}) : super(key: key);
  final String title;

  @override
  MeSceneState createState() => MeSceneState();
}

class MeSceneState extends State<MeScene> {

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