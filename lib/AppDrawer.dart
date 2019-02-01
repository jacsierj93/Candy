import 'package:flutter/material.dart';

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
              margin: EdgeInsets.only(
                top: 54.0
              ),
              child: null,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/images/Logo- blanco.png"), 
                ),
              ),
            ),
          ],
        ),
      )
    );
  }
}