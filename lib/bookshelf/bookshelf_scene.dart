import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:flutter_xbook/model/novel.dart';

class BookshelfScene extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => BookshelfSceneState();
}

class BookshelfSceneState extends State<BookshelfScene> {
  List<Novel> favoriteNovels = [];
  ScrollController scrollController = ScrollController();
  double navAlpha = 0;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    fetchData();

    scrollController.addListener(() {
      var offset = scrollController.offset;
      if (offset < 0) {
        if (navAlpha != 0) {
          setState(() {
            navAlpha = 0;
          });
        }
      } else if (offset < 50) {
        setState(() {
          navAlpha = 1 - (50 - offset) / 50;
        });
      } else if (navAlpha != 1) {
        setState(() {
          navAlpha = 1;
        });
      }
    });
  }

  Future<void> fetchData() async{
    try{
      List<Novel> favoriteNovels = [];
      List<dynamic> favoriteResponse = await Request.get(action:'bookshelf');
      favoriteResponse.forEach((data){
        favoriteNovels.add(Novel.fromJson(data));
      });

      setState(() {
        this.favoriteNovels = favoriteNovels;
      });
    }catch(e){
      Toast.show(e.toString());
    }
  }

  Widget buildActions(Color iconColor){

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("书架"),
        ),
        body: Center(
          child: Column(),
        ) // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}