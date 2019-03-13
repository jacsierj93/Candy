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
  @override
  Widget build(BuildContext context) {
    
    return CustomHeader(
      background: AssetImage("assets/images/header.png"),
      body: Stack(
            children: <Widget>[
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Container(
                    height: (MediaQuery.of(context).size.width * 0.75) - 120,
                  ),
                  Searcher(),
                  Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        
                        BigBlock(
                          dest: MaterialPageRoute(
                              builder: (context) => NacHomePage()),
                          text: Text(
                            'Destinos Nacionales',
                            style: CustomTextStyles.titleWhite,
                          ),
                          background: AssetImage("assets/images/destNac.png"),
                          ico: AssetImage("assets/images/icono-nacional.png"),
                        ),
                        BigBlock(
                          dest: MaterialPageRoute(
                              builder: (context) => InternacHomePage()),
                          text: Text(
                            'Destinos Internacionales',
                            style: CustomTextStyles.titleWhite,
                          ),
                          background: AssetImage("assets/images/destInt.png"),
                          ico: AssetImage("assets/images/inter.png"),
                        ),
                        BigBlock(
                          dest: MaterialPageRoute(
                              builder: (context) => SalidasHomePage()),
                          text: Text(
                            'Proximas salidas',
                            style: CustomTextStyles.titleWhite,
                          ),
                          background: AssetImage("assets/images/salidas.png"),
                          ico: AssetImage("assets/images/icono-salidas.png"),
                        ),
                        Container(
                          height: 50,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
    );
  }
}
