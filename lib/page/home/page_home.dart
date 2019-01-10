import 'package:flutter/material.dart';
import '_logic_home.dart';

class MyHomePage extends StatefulWidget {
  final String title;

  MyHomePage({Key key, this.title}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

////////////////////////////////////////////////////////
/// State
////////////////////////////////////////////////////////
class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    ////////////////////////////////////////////////////
    /// Katagori Section
    ////////////////////////////////////////////////////
    Widget katagoriSection = Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Card(
              margin: EdgeInsets.all(8),
              child: Container(
                margin: EdgeInsets.all(8),
                child: Text("data"),
              ))
        ],
      ),
    );
    ////////////////////////////////////////////////////
    /// Katagori Section
    ////////////////////////////////////////////////////
    Widget hasilSection = Container();

    ////////////////////////////////////////////////////
    /// Scaffold
    ////////////////////////////////////////////////////
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          katagoriSection,
          hasilSection,
        ],
      ),
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
              onPressed: () {
                LogicHome().tambah();
              },
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
        onPressed: () {
          LogicHome().acak();
        },
      ),
    );
  }
}
