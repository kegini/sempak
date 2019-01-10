import 'package:flutter/material.dart';

class PageKatagori extends StatefulWidget {
  final String title;

  PageKatagori({Key key, this.title}) : super(key: key);

  @override
  _PageKatagori createState() => _PageKatagori();
}

class _PageKatagori extends State<PageKatagori> {
  final _scaffoldKey = new GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: new BottomAppBar(
        shape: CircularNotchedRectangle(),
        color: Colors.green,
        child: new Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            IconButton(
              icon: Icon(Icons.add_circle),
              color: Colors.white,
              onPressed: () {},
            ),
            Text(
              "Kesempatan 10/10",
              style: TextStyle(color: Colors.white),
            )
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endDocked,
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.touch_app),
        backgroundColor: Colors.green,
        foregroundColor: Colors.white,
        onPressed: () {},
      ),
    );
  }
}
