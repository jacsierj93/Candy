import 'package:flutter/material.dart';
import 'AppDrawer.dart';
import 'util.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                  child: CustomHeader(),
                ),
              ),
            Expanded(
                flex: 6,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        Expanded(
                          child: Container(
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage("assets/images/destNac.png"), 
                                fit: BoxFit.cover,
                              ),
                              borderRadius: new BorderRadius.all(Radius.circular(13.0)),
                            ),margin: new EdgeInsets.only(
                              left: 25.0,
                              right: 25.0,
                              top: 25.0,
                            ),
                            height: 96.0,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[
                                    ImageIcon(
                                      AssetImage("assets/images/icoInter.png"),
                                      size: 40.0,
                                    )
                                  ],),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[
                                    Text(
                                      'Destinos Internacionales',
                                      style: TextStyle(
                                        fontSize: 32,
                                        color: Colors.white,
                                      ),
                                    
                                    )
                                ],)
                              ],
                            )
                          )
                      )
                      ],
                    ),
                  Row(
                      children: <Widget>[
                        Expanded(
                          child: Container(
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage("assets/images/destInt.png"), 
                                fit: BoxFit.cover,
                              ),
                              borderRadius: new BorderRadius.all(Radius.circular(13.0)),
                            ),margin: new EdgeInsets.only(
                              left: 25.0,
                              right: 25.0,
                              top: 25.0,
                            ),
                            height: 96.0,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[
                                    ImageIcon(
                                      AssetImage("assets/images/icoNac.png"),
                                      size: 40.0,
                                    )
                                  ],),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[
                                    Text(
                                      'Destinos Nacionales',
                                      style: TextStyle(
                                        fontSize: 32,
                                        color: Colors.white,
                                      ),
                                    
                                    )
                                ],)
                              ],
                            )
                          )
                      )
                      ],
                    ),
                    Row(
                      children: <Widget>[
                        Expanded(
                          child: Container(
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage("assets/images/salidas.png"), 
                                fit: BoxFit.cover,
                              ),
                              borderRadius: new BorderRadius.all(Radius.circular(13.0)),
                            ),
                            margin: new EdgeInsets.only(
                              left: 25.0,
                              right: 25.0,
                              top: 25.0,
                            ),
                            height: 96.0,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[
                                    ImageIcon(
                                      AssetImage("assets/images/icoOut.png"),
                                      size: 40.0,
                                    )
                                  ],),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[
                                    Text(
                                      'Proximas Salidas',
                                      style: TextStyle(
                                        fontSize: 32,
                                        color: Colors.white,
                                      ),
                                    
                                    )
                                ],)
                              ],
                            )
                          )
                      )
                      ],
                    )
                  
                  ],
                ),
              ),
            ],
          ),
          Positioned(
            top: 260,
            
            child: Container(
              padding: EdgeInsets.only(
                left: 25.0,
                right: 25.0
              ),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: new BorderRadius.all(Radius.circular(36.0)),
                boxShadow: <BoxShadow>[
                  BoxShadow(
                    color: Colors.black38,
                    offset: Offset(0, 3),
                  )
                ]
              ),
              height: 50.0,
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Icon(Icons.search, color: Colors.black, size: 40.0,),
                    Text('Busca tu destino'),
                  ])

            )
          )
        ],
      ),

       // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
