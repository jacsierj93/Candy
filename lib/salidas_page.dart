import 'package:flutter/material.dart';
import 'AppDrawer.dart';
import 'util.dart';

class Item {
  bool isExpanded;
  final String header;
  final Widget body;
  Item(this.isExpanded, this.header, this.body);
}

class SalidasHomePage extends StatefulWidget {
  final String title;

  SalidasHomePage({Key key, this.title}) : super(key: key);
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
                        builder: (context) => SalidasHomePage())),
                Block(
                    descripcion: "una descripcion",
                    destination: MaterialPageRoute(
                        builder: (context) => SalidasHomePage()))
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
                        builder: (context) => SalidasHomePage())),
                Block(
                    descripcion: "una descripcion",
                    destination: MaterialPageRoute(
                        builder: (context) => SalidasHomePage()))
              ],
            )
          ])),
    ),
    //give all your items here
  ];
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
                        image: AssetImage("assets/images/portada_sal.png"),
                        fit: BoxFit.cover,
                      ),
                    ),
                    child: Column(
                      children: <Widget>[
                        CustomHeader(),
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
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                                fontSize: 42.0,
                              ),
                            )
                          ],
                        )
                      ],
                    )),
              ),
              Expanded(
                flex: 6,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    ExpansionPanelList(
                        expansionCallback: (int index, bool isExpanded) {
                          setState(() {
                            items[index].isExpanded = !items[index].isExpanded;
                          });
                        },
                        children: items
                            .map((item) => ExpansionPanel(
                                headerBuilder:
                                    (BuildContext contex, bool isExpanded) {
                                  return ListTile(
                                      leading: null,
                                      title: new Text(
                                        item.header,
                                        textAlign: TextAlign.left,
                                        style: new TextStyle(
                                          fontSize: 20.0,
                                          fontWeight: FontWeight.w400,
                                        ),
                                      ));
                                },
                                isExpanded: item.isExpanded,
                                body: item.body))
                            .toList())
                  ],
                ),
              ),
            ],
          ),
        ],
      ),

      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
