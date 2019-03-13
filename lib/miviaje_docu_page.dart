import 'package:flutter/material.dart';
import 'util.dart';

class MiViajeDocuPage extends StatefulWidget {
  final String title = "Documentacion";

  // SalidasHomePage({Key key, this.title}) : super(key: key);
  @override
  _MiViajeDocuPageState createState() => _MiViajeDocuPageState();
}

class _MiViajeDocuPageState extends State<MiViajeDocuPage> {
  @override
  Widget build(BuildContext context) {
    return CustomHeader(
      title: widget.title,
      body: Stack(
        children: <Widget>[
          Column(
            children: <Widget>[
              Expanded(
                child: Container(
                  alignment: Alignment.topLeft,
                  padding: EdgeInsets.only(left: 25),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        "ANTES DE DESPEGAR",
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          fontWeight: FontWeight.w700,
                          color: Colors.black,
                          fontSize: 25.0,
                        ),
                      ),
                      Text(
                        "Lorem ipsum dolor sit amet, consectetuer adipiscin.Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec quam felis, ultricies nec.",
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 13.0,
                        ),
                      ),
                      Text(
                        "• DNI en mano al registrarse en el hotel. \n• Pasaporte para ingresar al país.",
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
