import 'package:flutter/material.dart';
import 'AppDrawer.dart';
import 'util.dart';

class DetailsPage extends StatefulWidget {
  final String title;
  bool isVisible = false;
  

  DetailsPage({Key key, this.title}) : super(key: key);
  @override
  _DetailsPageState createState() => _DetailsPageState();
}

class _DetailsPageState extends State<DetailsPage> {
  @override
  Widget build(BuildContext context) {
    BoxDecoration decoration = BoxDecoration(
        color: Colors.white,
        borderRadius: new BorderRadius.all(Radius.circular(15.0)),
        boxShadow: <BoxShadow>[
          BoxShadow(
              color: Colors.black12,
              offset: Offset(0, 0),
              blurRadius: 3.0,
              spreadRadius: 3.0)
        ]);

    return Scaffold(
      endDrawer: AppDrawer(),
      body: Stack(
        children: <Widget>[
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Expanded(
                flex: 5,
                child: Container(
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage("assets/images/portada_dest.png"),
                        fit: BoxFit.cover,
                      ),
                    ),
                    child: Padding(
                      padding: EdgeInsets.only(
                        left: 20.0,
                        bottom: 20,
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: <Widget>[
                          CustomHeader(),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: <Widget>[
                              Image(
                                image: new AssetImage(
                                    "assets/images/Location-12.png"),
                                color: null,
                                fit: BoxFit.scaleDown,
                                alignment: Alignment.center,
                              )
                            ],
                          ),
                          Spacer(),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: <Widget>[
                              Text(
                                "Villa de Merlo, San Luis",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                  fontSize: 36.0,
                                ),
                              )
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: <Widget>[
                              Text(
                                "Salida el 10/08/2019",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 36.0,
                                ),
                              )
                            ],
                          ),
                          Spacer(),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: <Widget>[
                              Text(
                                "ARS 2750",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontWeight: FontWeight.w800,
                                  color: Colors.white,
                                  fontSize: 42.0,
                                ),
                              )
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: <Widget>[
                              Text(
                                "POR PERSONA + GASTOS DE RESERVA",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 24.0,
                                ),
                              )
                            ],
                          )
                        ],
                      ),
                    )),
              ),
              Expanded(
                flex: 5,
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      Container(
                        color: Color.fromRGBO(247, 156, 124, 1),
                        height: 50,
                        alignment: Alignment.center,
                        width: MediaQuery.of(context).size.width,
                        child: Text(
                          "3 dias / 4 noches",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 32.0,
                          ),
                        ),
                      ),
                      Container(
                        height: 50,
                        width: MediaQuery.of(context).size.width,
                        padding: EdgeInsets.all(20),
                        alignment: Alignment.centerLeft,
                        child: Text(
                          "Incluye",
                          textAlign: TextAlign.start,
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.black45,
                            fontSize: 36.0,
                          ),
                        ),
                      ),
                      Expanded(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: <Widget>[
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: <Widget>[
                                Container(
                                  height: 50,
                                  width:
                                      MediaQuery.of(context).size.width * 0.45,
                                  alignment: Alignment.center,
                                  decoration: decoration,
                                  child: Text("Desayuno",
                                      style: TextStyle(
                                        fontSize: 24,
                                      )),
                                ),
                                Container(
                                  height: 50,
                                  width:
                                      MediaQuery.of(context).size.width * 0.45,
                                  alignment: Alignment.center,
                                  decoration: decoration,
                                  child: Text("Posada",
                                      style: TextStyle(
                                        fontSize: 24,
                                      )),
                                )
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: <Widget>[
                                Container(
                                  height: 50,
                                  width:
                                      MediaQuery.of(context).size.width * 0.45,
                                  alignment: Alignment.center,
                                  decoration: decoration,
                                  child: Text("N noches",
                                      style: TextStyle(
                                        fontSize: 24,
                                      )),
                                ),
                                Container(
                                  height: 50,
                                  width:
                                      MediaQuery.of(context).size.width * 0.45,
                                  alignment: Alignment.center,
                                  decoration: decoration,
                                  child: Text("Asistencia ",
                                      style: TextStyle(
                                        fontSize: 24,
                                      )),
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                      GestureDetector(
                        onTap: (){
                          setState(() {
                            widget.isVisible = true;
                          });
                        } ,
                        child: Container(
                          height: 50,
                          width: MediaQuery.of(context).size.width,
                          decoration: BoxDecoration(
                            gradient: LinearGradient(
                              begin: const Alignment(0.75, 0.5),
                              end: const Alignment(0.25, 0.5),
                              colors: <Color>[
                                Color.fromRGBO(241, 90, 36, 1),
                                Color.fromRGBO(193, 39, 45, 1)
                              ],
                            ),
                          ),
                          child: Text(
                            "Contactanos por este Destino",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 32.0,
                            ),
                          ),
                        ),
                      )
                    ]),
              )
            ],
          ),
          Visibility(
            child: Positioned(
              top: 0,
              child: Container(
                color: Color.fromRGBO(193, 39, 45, 0.2),
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width,
                alignment: Alignment.center,
                child: Container(
                  color: Color.fromRGBO(241, 90, 36, 1),
                  height: MediaQuery.of(context).size.height * 0.9,
                  width: MediaQuery.of(context).size.width * 0.9,
                  child: Column(
                    children: <Widget>[
                      Column(
                        children: <Widget>[
                          Align(
                            alignment: Alignment.centerRight,
                            child: IconButton(
                              onPressed: () {
                                setState(() {
                                  widget.isVisible = false;
                                });
                              },
                              icon: Icon(
                              Icons.close,
                              size: 40.0,
                              color: Colors.white,
                              
                            ),
                            )
                            
                          ),
                          Image(
                            image: new AssetImage(
                                "assets/images/logo-blanco-min.png"),
                            color: null,
                            height: 60.0,
                            alignment: Alignment.center,
                          ),
                          Text(
                            "CONTACTANOS",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 40.0,
                            ),
                          ),
                        ],
                      ),
                      Padding(
                        padding: EdgeInsets.all(20),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: <Widget>[
                            Container(
                              padding: EdgeInsets.only(left: 20, top: 10),
                              margin: EdgeInsets.only(bottom: 10),
                              decoration: BoxDecoration(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(12)),
                                color: Colors.white,
                              ),
                              child: TextField(
                                textAlign: TextAlign.start,
                                decoration: InputDecoration(
                                    hintText: "Nombre",
                                    border: InputBorder.none,
                                    hintStyle: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 24.0,
                                      color: Colors.black38,
                                    )),
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.only(left: 20, top: 10),
                              margin: EdgeInsets.only(bottom: 10),
                              decoration: BoxDecoration(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(12)),
                                color: Colors.white,
                              ),
                              child: TextField(
                                textAlign: TextAlign.start,
                                decoration: InputDecoration(
                                    hintText: "Apellido",
                                    border: InputBorder.none,
                                    hintStyle: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 24.0,
                                      color: Colors.black38,
                                    )),
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.only(left: 20, top: 10),
                              margin: EdgeInsets.only(bottom: 10),
                              decoration: BoxDecoration(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(12)),
                                color: Colors.white,
                              ),
                              child: TextField(
                                textAlign: TextAlign.start,
                                decoration: InputDecoration(
                                    hintText: "Telefono",
                                    border: InputBorder.none,
                                    hintStyle: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 24.0,
                                      color: Colors.black38,
                                    )),
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.only(left: 20, top: 10),
                              margin: EdgeInsets.only(bottom: 10),
                              decoration: BoxDecoration(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(12)),
                                color: Colors.white,
                              ),
                              child: TextField(
                                textAlign: TextAlign.start,
                                decoration: InputDecoration(
                                    hintText: "Email",
                                    border: InputBorder.none,
                                    hintStyle: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 24.0,
                                      color: Colors.black38,
                                    )),
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.only(left: 20, top: 10),
                              margin: EdgeInsets.only(bottom: 10),
                              decoration: BoxDecoration(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(12)),
                                color: Colors.white,
                              ),
                              child: TextField(
                                textAlign: TextAlign.start,
                                keyboardType: TextInputType.multiline,
                                maxLines: 6,
                                decoration: InputDecoration(
                                    hintText: "Mensaje",
                                    border: InputBorder.none,
                                    hintStyle: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 24.0,
                                      color: Colors.black38,
                                    )),
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
            visible: widget.isVisible,
          )
        ],
      ),

      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
