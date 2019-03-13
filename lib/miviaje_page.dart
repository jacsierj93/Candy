import 'package:flutter/material.dart';
import 'home_miviaje_page.dart';
import 'AppDrawer.dart';

class MiViajePage extends StatefulWidget {
  @override
  _MiViajePageState createState() => _MiViajePageState();
}

class _MiViajePageState extends State<MiViajePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      endDrawer: AppDrawer(),
      body:SingleChildScrollView(
          child: ConstrainedBox(
            constraints: BoxConstraints(
              minHeight:MediaQuery.of(context).size.height
            ),
            child: IntrinsicHeight(
              child: Container(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              //color: Colors.orange,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: const Alignment(0.5, 0.25),
                  end: const Alignment(0.5, 0.75),
                  colors: <Color>[
                    Color.fromRGBO(241, 90, 36, 1),
                    Color.fromRGBO(193, 39, 45, 1)
                  ],
                ),
              ),
              child: Column(
                  children: <Widget>[
                    Spacer(),
                    Expanded(
                      flex: 2,
                        child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Image(
                          image: new AssetImage(
                              "assets/images/logo-blanco-min.png"),
                          color: null,
                          alignment: Alignment.center,
                        ),
                        Text(
                          "Ingresa el Codigo \n de tu viaje",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 40.0,
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.only(left: 20),
                          margin: EdgeInsets.only(bottom: 20),
                          height: 50.0,
                          width: MediaQuery.of(context).size.width * 0.6,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(12)),
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
                        InkResponse(
                          onTap: () {
                            Navigator.push(context, MaterialPageRoute(builder: (contex) => HomeMiViajePage()));
                          },
                          borderRadius: BorderRadius.circular(24),
                          child: Container(
                            width: MediaQuery.of(context).size.width * 0.6,
                            height: 50.0,
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                              color: Colors.orange,
                              borderRadius: BorderRadius.circular(24),
                            ),
                            child: Text(
                            "INGRESAR",
                            style: TextStyle(
                              fontSize: 32.0,
                              color: Colors.white
                              
                            ),
                          ),
                          )
                        )
                      ],
                    )),
                    Spacer()
                  ],
                ), 

              /*  ],
                    ) */
              )
              
            ),
          ) ,
      ),

      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
