import 'package:flutter/material.dart';
import '_logic_home.dart';
import '../katagori/page_katagori.dart';
import '../item/page_detail_item.dart';

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
    Widget katagoriSection = FlatButton(
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => PageKatagoriList()),
        );
      },
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Card(
              color: Colors.green,
              margin: EdgeInsets.all(8),
              child: Container(
                  margin: EdgeInsets.all(8),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      Image(
                        width: 50,
                        height: 50,
                        image: AssetImage("images/logo.png"),
                      ),
                      Container(
                        margin: EdgeInsets.all(8),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          mainAxisSize: MainAxisSize.min,
                          children: <Widget>[
                            Text(
                              "Jajanan Depan Komplek",
                              style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                              textAlign: TextAlign.start,
                            ),
                          ],
                        ),
                      ),
                    ],
                  )))
        ],
      ),
    );
    ////////////////////////////////////////////////////
    /// Katagori Section
    ////////////////////////////////////////////////////
    Widget hasilSection = Container(
      margin: EdgeInsets.only(top: 80),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        children: <Widget>[
          FlatButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => PageDetailItem(
                          title: "Detail Item",
                        )),
              );
            },
            child: Image(
              width: 250,
              height: 250,
              image: AssetImage("images/logo.png"),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 8),
            child: Text(
              "Nasi Goreng",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.green,
              ),
              textAlign: TextAlign.center,
            ),
          ),
        ],
      ),
    );

    ////////////////////////////////////////////////////
    /// Scaffold
    ////////////////////////////////////////////////////
    return Scaffold(
      appBar: AppBar(
          title: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            widget.title,
            textAlign: TextAlign.center,
          ),
        ],
      )),
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
