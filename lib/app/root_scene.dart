import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_xbook/app/constant.dart';
import 'package:flutter_xbook/app/sq_color.dart';
import 'package:flutter_xbook/bookshelf/bookshelf_scene.dart';
import 'package:flutter_xbook/home/home_scene.dart';
import 'package:flutter_xbook/me/me_scene.dart';
import 'package:flutter_xbook/utility/event_bus.dart';

class RootScene extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => RootSceneState();
}

class RootSceneState extends State<RootScene> {
  int _tabIndex = 1;
  bool isFinishSetup = false;
  List<Image> _tabImages = [
    Image.asset('img/tab_bookshelf_n.png',
      width: 20,
      height: 20,),
    Image.asset('img/tab_bookstore_n.png',
      width: 20,
      height: 20,),
    Image.asset('img/tab_me_n.png',
      width: 20,
      height: 20,),
  ];
  List<Image> _tabSelectedImages = [
    Image.asset('img/tab_bookshelf_p.png',
      width: 20,
      height: 20,),
    Image.asset('img/tab_bookstore_p.png',
      width: 20,
      height: 20,),
    Image.asset('img/tab_me_p.png',
      width: 20,
      height: 20,),
  ];

  @override
  void initState() {
    super.initState();

    setupApp();

    eventBus.on(EventToggleTabBarIndex,(arg){
      setState(() {
        _tabIndex = arg;
      });
    });

  }

  setupApp() async {
    setState(() {
      isFinishSetup = true;
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

      bottomNavigationBar: CupertinoTabBar(
        backgroundColor: Colors.white,
        activeColor: SQColor.primary,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: getTabIcon(0), title: Text('书架')),
          BottomNavigationBarItem(icon: getTabIcon(1), title: Text('书城')),
          BottomNavigationBarItem(icon: getTabIcon(2), title: Text('我的')),
        ],
        currentIndex: _tabIndex,
        onTap: (index){
          setState(() {
            _tabIndex = index;
          });
        },
      ),


    );



  }

  Image getTabIcon(int index){
    if (index == _tabIndex) {
      return _tabSelectedImages[index];
    } else {
      return _tabImages[index];
    }
  }

}