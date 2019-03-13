import 'package:flutter/material.dart';
import 'dest_detail_page.dart';
import 'util.dart';

class NacHomePage extends StatefulWidget {
  final String title = "Destinos Nacionales";

  final List<List> data = List<List>.generate(
      4,
      (i) => List<RemoteData>.generate(
          2,
          (k) => RemoteData("$k", "Nacional\n--$k--",
              MaterialPageRoute(builder: (context) => DetailsPage()))));

  //NacHomePage({Key key, this.title}) : super(key: key);
  @override
  _NacHomePageState createState() => _NacHomePageState();
}

class _NacHomePageState extends State<NacHomePage> {
  @override
  Widget build(BuildContext context) {
    return CustomHeader(
      title: widget.title,
      background: AssetImage("assets/images/Portada_nac.png"),
      body: Stack(
        children: <Widget>[
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              /* Expanded(
                flex: 1,
                child:  */Container(
                   height: (MediaQuery.of(context).size.width * 0.61) - 120,
                    child: Column(
                      children: <Widget>[
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Image(
                              image: new AssetImage(
                                  "assets/images/icono-nacional.png"),
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
                              "Destinos \n Nacionales",
                              textAlign: TextAlign.center,
                              style: CustomTextStyles.sectionsBig
                            )
                          ],
                        )
                      ],
                    )),/* 
              ), */
              Searcher(),
              Expanded(
                flex: 1,
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
                        .toList()),
              ),
            ],
          ),
          /* Searcher() */
        ],
      ),
    );
  }
}
