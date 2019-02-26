import 'package:flutter/material.dart';
import 'AppDrawer.dart';
import 'dest_detail_page.dart';
import 'util.dart';

class InternacHomePage extends StatefulWidget {
  final String title;
  final List<List> data = List<List>.generate(
      4,
      (i) => List<RemoteData>.generate(
          2,
          (k) => RemoteData("$k", "Internacional\n--$k--",
              MaterialPageRoute(builder: (context) => DetailsPage()))));
  InternacHomePage({Key key, this.title}) : super(key: key);
  @override
  _InternacHomePageState createState() => _InternacHomePageState();
}

class _InternacHomePageState extends State<InternacHomePage> {
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
                        image: AssetImage("assets/images/portada_int.png"),
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
                              image: AssetImage("assets/images/Icono-inter-05.png"),
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
                              "Destinos \n Internacionales",
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
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: widget.data
                      .map((sub) => Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: sub
                                .map((item) => Block(
                                    descripcion: item.nombre,
                                    destination: item.destination))
                                .toList(),
                          ))
                      .toList(),
                ),
              ),
            ],
          ),
          Searcher()
        ],
      ),

      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
