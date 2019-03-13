import 'package:flutter/material.dart';
import 'miviaje_docu_page.dart';
import 'miviaje_info_page.dart';
import 'util.dart';

class HomeMiViajePage extends StatefulWidget {
  final String title;
  bool isVisible = false;

  HomeMiViajePage({Key key, this.title}) : super(key: key);
  @override
  _HomeMiViajePageState createState() => _HomeMiViajePageState();
}

class _HomeMiViajePageState extends State<HomeMiViajePage> {
  @override
  Widget build(BuildContext context) {
    return CustomHeader(
        background: AssetImage("assets/images/portada_temp2.png"),
        body: Stack(
          children: <Widget>[
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Expanded(
                  flex: 1,
                  child: Container(
                     
                      child: Padding(
                    padding: EdgeInsets.only(
                      left: 20.0,
                      bottom: 20,
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
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
                              "MI VIAJE",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontWeight: FontWeight.w800,
                                color: Colors.white,
                                fontSize: 24.0,
                              ),
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
                                fontSize: 32.0,
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
                                fontSize: 18.0,
                              ),
                            )
                          ],
                        ),
                        /* Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              "ARS 2750",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontWeight: FontWeight.w800,
                                color: Colors.white,
                                fontSize: 32.0,
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
                                fontSize: 18.0,
                              ),
                            )
                          ],
                        ) */
                      ],
                    ),
                  )),
                ),
                Expanded(
                  flex: 2,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Expanded(
                          child: Row(
                        children: <Widget>[
                          Expanded(
                              child: InkResponse(
                            
                            child: Padding(
                              padding: EdgeInsets.all(15),
                              child: Material(
                                borderRadius: BorderRadius.circular(30),
                                elevation: 2.0,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[
                                    Image(
                                      image: AssetImage(
                                          "assets/images/icono-itin.png"),
                                      color: null,
                                      fit: BoxFit.scaleDown,
                                      alignment: Alignment.center,
                                      height: 40.0,
                                    ),
                                    Text(
                                      "Itinerario",
                                      style: BigBlock.titleStyleB,
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ))
                        ],
                      )),
                      Expanded(
                          child: Row(
                        children: <Widget>[
                          Expanded(
                              child: InkResponse(
                                 onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => MiViajeDocuPage()));
                            },
                            child: Padding(
                            padding: EdgeInsets.all(15),
                            child: Material(
                              borderRadius: BorderRadius.circular(30),
                              elevation: 2.0,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  Image(
                                    image: AssetImage(
                                        "assets/images/icono-docu.png"),
                                    color: null,
                                    fit: BoxFit.scaleDown,
                                    alignment: Alignment.center,
                                    height: 40.0,
                                  ),
                                  Text(
                                    "Documentación",
                                    style: BigBlock.titleStyleB,
                                  )
                                ],
                              ),
                            ),
                          )))
                        ],
                      )),
                      Expanded(
                          child: Row(
                        children: <Widget>[
                          Expanded(
                              child:InkResponse(
                                onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => MiViajeInfoPage()));
                            },
                                child:  Padding(
                            padding: EdgeInsets.all(15),
                            child: Material(
                              borderRadius: BorderRadius.circular(30),
                              elevation: 2.0,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  Image(
                                    image: AssetImage(
                                        "assets/images/icono-info.png"),
                                    color: null,
                                    fit: BoxFit.scaleDown,
                                    alignment: Alignment.center,
                                    height: 40.0,
                                  ),
                                  Text(
                                    "Información importante",
                                    style: BigBlock.titleStyleB,
                                  )
                                ],
                              ),
                            ),
                          ),
                              ))
                        ],
                      ))
                    ],
                  ),
                )
              ],
            ),
          ],
        ));
  }
}
