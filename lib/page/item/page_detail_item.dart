import 'package:flutter/material.dart';

class PageDetailItem extends StatefulWidget {
  final String title;

  PageDetailItem({Key key, this.title}) : super(key: key);

  @override
  _PageItemListState createState() => _PageItemListState();
}

class _PageItemListState extends State<PageDetailItem> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: new Stack(
        children: <Widget>[
          new Container(
            child: new Image.asset('images/forest.jpg'),
            color: Colors.lightGreen,
          ),
          new Scaffold(
              appBar: new AppBar(
                title: new Text('Hello'),
                backgroundColor: Colors.transparent,
                elevation: 0.0,
              ),
              backgroundColor: Colors.transparent,
              body: new Container(
                color: Colors.white,
                child: new Center(
                  child: new Text('Hello how are you?'),
                ),
              ))
        ],
      ),
    );
  }
}
