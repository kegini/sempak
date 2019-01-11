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
    return CustomScrollView(
      slivers: <Widget>[
        SliverAppBar(
          title: Text('SliverAppBar'),
          backgroundColor: Colors.green,
          expandedHeight: 200.0,
          flexibleSpace: FlexibleSpaceBar(
            background: Image.asset('images/forest.jpg', fit: BoxFit.cover),
          ),
        ),
        SliverFixedExtentList(
          itemExtent: 150.0,
          delegate: SliverChildListDelegate(
            [
              Container(color: Colors.red),
            ],
          ),
        ),
      ],
    );
  }
}
