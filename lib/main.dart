import 'package:flutter/material.dart';
import 'page/home/page_home.dart';
import 'page/katagori/page_katagori.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'SemPAK',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: PageKatagori(title: 'SemPAK'),
    );
  }
}
