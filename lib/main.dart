import 'package:flutter/material.dart';
import 'home_page.dart';
import 'destinos_nacionales_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        fontFamily: 'Museo',
        primarySwatch: Colors.green,
      ),
      home: NacHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}
