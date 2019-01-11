import 'package:flutter/material.dart';

class PageKatagori extends StatefulWidget {
  final String title;

  PageKatagori({Key key, this.title}) : super(key: key);

  @override
  _PageKatagori createState() => _PageKatagori();
}

class _PageKatagori extends State<PageKatagori> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Page Kategori"),
      ),
      body: Center(
        child: RaisedButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: Text('Go back!'),
        ),
      ),
    );
  }
}
