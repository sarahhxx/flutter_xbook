import 'package:flutter/material.dart';
import 'package:flutter_xbook/model/novel.dart';
import 'package:flutter_xbook/utility/screen.dart';

class BookshelfItemView extends StatelessWidget{
  final Novel novel;
  BookshelfItemView(this.novel);

  @override
  Widget bulid(BuildContext context){
    var width = (Screen.width - 15*2 -24*2) / 3;
    return GestureDetector(
      onTap: (){

      },
      child: Container(
        width: width,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            DecoratedBox(
              child: N,
            )
          ],
        ),
      ),
    );
  }
}