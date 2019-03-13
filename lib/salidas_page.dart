import 'package:flutter/material.dart';
import 'util.dart';

class Item {
  bool isExpanded;
  final String header;
  final Widget body;
  Item(this.isExpanded, this.header, this.body);
}

class SalidasHomePage extends StatefulWidget {
  final String title = "Proximas Salidas";

  // SalidasHomePage({Key key, this.title}) : super(key: key);
  @override
  _SalidasHomePageState createState() => _SalidasHomePageState();
}

class _SalidasHomePageState extends State<SalidasHomePage> {
  List<Item> items = <Item>[
    new Item(
      false,
      'Agosto',
      new Padding(
          padding: new EdgeInsets.all(20.0),
          child: new Column(children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Block(
                    descripcion: "una descripcion",
                    destination: MaterialPageRoute(
                        builder: (context) => SalidasHomePage()),
                    emphaText: "23"),
                Block(
                    descripcion: "una descripcion",
                    destination: MaterialPageRoute(
                        builder: (context) => SalidasHomePage()),
                    emphaText: "23")
              ],
            )
          ])),
    ),
    new Item(
      false,
      'Septiembre',
      new Padding(
          padding: new EdgeInsets.all(20.0),
          child: new Column(children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Block(
                    descripcion: "una descripcion",
                    destination: MaterialPageRoute(
                        builder: (context) => SalidasHomePage()),
                    emphaText: "01"),
                Block(
                    descripcion: "una descripcion",
                    destination: MaterialPageRoute(
                        builder: (context) => SalidasHomePage()),
                    emphaText: "31"),
              ],
            )
          ])),
    ),
    //give all your items here
  ];
  @override
  Widget build(BuildContext context) {
    return CustomHeader(
      title: widget.title,
      background: AssetImage("assets/images/portada_sal.png"),
      body: Stack(
        children: <Widget>[
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Container(
                  height: MediaQuery.of(context).size.width * 0.61,
                  child: Column(
                    children: <Widget>[
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Image(
                            image: new AssetImage(
                                "assets/images/icono-salidas.png"),
                            color: null,
                            fit: BoxFit.scaleDown,
                            alignment: Alignment.center,
                          )
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text(
                            "Proximas \n Salidas",
                            textAlign: TextAlign.center,
                            style: CustomTextStyles.sectionsBig,
                          )
                        ],
                      )
                    ],
                  )),
              Expanded(
                flex: 2,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: items
                      .map((item) => Column(
                            children: <Widget>[
                              InkWell(
                                onTap: () {
                                  setState(() {
                                    item.isExpanded = !item.isExpanded;
                                  });
                                },
                                child: Container(
                                    color: Color.fromRGBO(247, 156, 124, 1),
                                    height: 40.0,
                                    alignment: Alignment.center,
                                    width: MediaQuery.of(context).size.width,
                                    padding: EdgeInsets.only(
                                        left: 10.0, right: 10.0),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: <Widget>[
                                        Expanded(
                                          child: Text(
                                            item.header,
                                            textAlign: TextAlign.center,
                                            style: CustomTextStyles.subtitlesWhite
                                            ),
                                        ),
                                        Visibility(
                                          visible: !item.isExpanded,
                                          child: Image(
                                            image: new AssetImage(
                                                "assets/images/arrow-down.png"),
                                            color: null,
                                            fit: BoxFit.scaleDown,
                                            alignment: Alignment.center,
                                          ),
                                        ),
                                        Visibility(
                                          visible: item.isExpanded,
                                          child: Image(
                                            image: new AssetImage(
                                                "assets/images/arrow-up.png"),
                                            color: null,
                                            fit: BoxFit.scaleDown,
                                            alignment: Alignment.center,
                                          ),
                                        )
                                      ],
                                    )),
                              ),
                              Visibility(
                                visible: item.isExpanded,
                                child: item.body,
                              )
                            ],
                          ))
                      .toList(),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
