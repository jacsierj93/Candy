import 'package:flutter/material.dart';
import 'util.dart';

class MiViajeInfoPage extends StatefulWidget {
  final String title = "Informacion";

  // SalidasHomePage({Key key, this.title}) : super(key: key);
  @override
  _MiViajeInfoPageState createState() => _MiViajeInfoPageState();
}

class _MiViajeInfoPageState extends State<MiViajeInfoPage> {
  @override
  Widget build(BuildContext context) {
    return CustomHeader(
      title: widget.title,
      body: Stack(
        children: <Widget>[
          Column(
            children: <Widget>[
              Container(
                height: 50,
                color: Color.fromRGBO(247, 156, 124, 1),
                alignment: Alignment.center,
                width: MediaQuery.of(context).size.width,
                child: Text(
                  "TELÉFONOS DE UTILIDAD",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    fontSize: 24.0,
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  alignment: Alignment.topLeft,
                  padding: EdgeInsets.only(left: 25),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: List.generate(
                      5,
                      (i) => Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: <Widget>[
                          Image(
                              image: new AssetImage(
                                  "assets/images/icono-telefono.png"),
                              color: null,
                              fit: BoxFit.scaleDown,
                              alignment: Alignment.center,
                            ),
                          Expanded(
                            child: Container(
                              child: Column(
                                children: <Widget>[
                                  Text(
                                    "(+54) $i$i$i$i$i$i$i$i",
                                    textAlign: TextAlign.left,
                                    style: TextStyle(
                                      fontWeight: FontWeight.w800,
                                      color: Colors.black,
                                      fontSize: 24.0,
                                    ),
                                  ),
                                  Text(
                                      "Un numero de telefono",
                                      textAlign: TextAlign.left,
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Colors.black,
                                        fontSize: 16.0,
                                      ),
                                    )
                                ],
                              ),
                            ),
                          )
                        ],
                      )),
                  ),
                ),
              ),
              Container(
                height: 50,
                color: Color.fromRGBO(247, 156, 124, 1),
                alignment: Alignment.center,
                width: MediaQuery.of(context).size.width,
                child: Text(
                  "Recomendaciones para equipaje",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    fontSize: 24.0,
                  ),
                ),
              ),
              Expanded(
                  child: Container(
                alignment: Alignment.topLeft,
                padding: EdgeInsets.only(left: 25),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: List.generate(
                      5,
                      (i) => Text(
                            "• ITEM LISTA # $i",
                            textAlign: TextAlign.left,
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                              fontSize: 16.0,
                            ),
                          )),
                ),
              ))
            ],
          )
        ],
      ),
    );
  }
}
