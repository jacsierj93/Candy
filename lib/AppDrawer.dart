import 'package:flutter/material.dart';
import 'destinos_nacionales_page.dart';
import 'destinos_inter_page.dart';

class AppDrawer extends StatefulWidget {
  @override
  _AppDrawerState createState() => _AppDrawerState();
}

class _AppDrawerState extends State<AppDrawer> {
  @override
  Widget build(BuildContext context) {
    return new Drawer(
        child: Container(
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
      child: ListView(
        // Important: Remove any padding from the ListView.
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
            margin: EdgeInsets.only(top: 54.0),
            child: null,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/images/Logo- blanco.png"),
              ),
            ),
          ),
          Column(
            children: <Widget>[
              Padding(
                padding: EdgeInsets.only(
                  top: 20.0,
                  right: 10.0,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: <Widget>[
                    InkWell(
                      splashColor: Colors.white54,
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => NacHomePage()));
                      },
                      child: Container(
                        child: Text(
                          'Destinos \n Nacionales',
                          textAlign: TextAlign.right,
                          style: TextStyle(
                            fontSize: 42,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                  top: 20.0,
                  right: 10.0,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: <Widget>[
                    InkWell(
                      splashColor: Colors.white54,
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => InternacHomePage()));
                      },
                      child: Container(
                        child: Text(
                          'Destinos \n Internacionales',
                          textAlign: TextAlign.right,
                          style: TextStyle(
                            fontSize: 42,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                  top: 20.0,
                  right: 10.0,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: <Widget>[
                    Text(
                      'Proximas \n Salidas',
                      textAlign: TextAlign.right,
                      style: TextStyle(
                        fontSize: 42,
                        color: Colors.white,
                      ),
                    )
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                  top: 20.0,
                  right: 10.0,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: <Widget>[
                    Text(
                      'Mi viaje',
                      textAlign: TextAlign.right,
                      style: TextStyle(
                        fontSize: 42,
                        color: Colors.white,
                      ),
                    )
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                  top: 20.0,
                  right: 10.0,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: <Widget>[
                    Text(
                      'Contacto',
                      textAlign: TextAlign.right,
                      style: TextStyle(
                        fontSize: 42,
                        color: Colors.white,
                      ),
                    )
                  ],
                ),
              ),
            ],
          )
        ],
      ),
    ));
  }
}
