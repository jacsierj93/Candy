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
    return CustomHeader(
      background: AssetImage("assets/images/portada_int.png"),
      body: Stack(
        children: <Widget>[
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              // Expanded(flex: 1, child: 
              Container(
                height: (MediaQuery.of(context).size.width * 0.61) - 120,
                child: Column(
                      children: <Widget>[
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
                              style: CustomTextStyles.sectionsBig,
                            )
                          ],
                        )
                      ],
                    )
              ),
              //),
              Searcher(),
              Expanded(
                flex: 2,
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
          
        ],
      ),
    );
  }
}
