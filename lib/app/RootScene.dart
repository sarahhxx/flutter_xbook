import 'package:flutter/material.dart';

class RootScene extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => RootSceneState();
}

class RootSceneState extends State<RootScene> {
  int _tabIndex = 1;
  bool isFinishSetup = false;

  @override
  void initState() {
    super.initState();

    setupApp();
  }

  setupApp() async {
    setState(() {
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: IndexedStack(
        children: <Widget>[
        BookshelfScene(),
        HomeScene(),
        MeScene(),
        ],
        index: _tabIndex,
        ),
    );
  }


}