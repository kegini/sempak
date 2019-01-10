import 'package:flutter/material.dart';

class PageItemList extends StatefulWidget {
  final String title;

  PageItemList({Key key, this.title}) : super(key: key);

  @override
  _PageItemListState createState() => _PageItemListState();
}

class _PageItemListState extends State<PageItemList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(),
    );
  }
}
