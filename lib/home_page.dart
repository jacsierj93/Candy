import 'package:flutter/material.dart';
import 'AppDrawer.dart';
import 'util.dart';
import 'destinos_nacionales_page.dart';
import 'destinos_inter_page.dart';
import 'salidas_page.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  GlobalKey _scaffoldstate = new GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    final titleStyle = new TextStyle(
      fontSize: 32,
      color: Colors.white,
    );
    return Scaffold(
      key: _scaffoldstate,
      endDrawer: AppDrawer(),
      body: Stack(
        children: <Widget>[
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Expanded(
                flex: 4,
                child: Container(
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("assets/images/header.png"),
                      fit: BoxFit.cover,
                    ),
                  ),
                  child: CustomHeader(scaffoldKey: _scaffoldstate),
                ),
              ),
              Expanded(
                flex: 6,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    BigBlock(
                      dest: MaterialPageRoute(
                          builder: (context) => NacHomePage()),
                      text: Text(
                        'Destinos Nacionales',
                        style: titleStyle,
                      ),
                      background: AssetImage("assets/images/destNac.png"),
                      ico: AssetImage("assets/images/icono-nacional.png"),
                    ),
                    BigBlock(
                      dest: MaterialPageRoute(
                          builder: (context) => InternacHomePage()),
                      text: Text(
                        'Destinos Internacionales',
                        style: titleStyle,
                      ),
                      background: AssetImage("assets/images/destInt.png"),
                      ico: AssetImage("assets/images/inter.png"),
                    ),
                    BigBlock(
                      dest: MaterialPageRoute(
                          builder: (context) => SalidasHomePage()),
                      text: Text(
                        'Proximas salidas',
                        style: titleStyle,
                      ),
                      background: AssetImage("assets/images/salidas.png"),
                      ico: AssetImage("assets/images/icono-salidas.png"),
                    ),
                  ],
                ),
              ),
            ],
          ),
          Searcher(),
        ],
      ),

      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
