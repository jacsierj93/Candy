import 'package:flutter/material.dart';
class CustomHeader extends StatefulWidget {
  
  @override
  _CustomHeaderState createState() => _CustomHeaderState();
}

class _CustomHeaderState extends State<CustomHeader> {
  @override
  Widget build(BuildContext context) {
     void openDrawer() {
        Scaffold.of(context).openDrawer();
      }
  return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[
        Container(height: 40.0,),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: <Widget>[
            IconButton(
              icon: Icon(Icons.menu),
              color: Colors.white,
              onPressed: openDrawer,
            ),
            Container(width: 25.0,),
          ],
        )
      ],
    );
  }
}
