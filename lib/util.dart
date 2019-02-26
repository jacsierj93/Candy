import 'package:flutter/material.dart';

class CustomHeader extends StatefulWidget {
  final GlobalKey<ScaffoldState> scaffoldKey;
  CustomHeader({Key key, this.scaffoldKey}) : super(key: key);
  @override
  _CustomHeaderState createState() => _CustomHeaderState();
}

class _CustomHeaderState extends State<CustomHeader> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[
        Container(
          height: 40.0,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: <Widget>[
            IconButton(
              icon: Icon(Icons.menu),
              color: Colors.white,
              iconSize: 40.0,
              onPressed: () {
                print(widget.scaffoldKey);
                widget.scaffoldKey.currentState.openDrawer();
              },
            ),
            Container(
              width: 25.0,
            ),
          ],
        )
      ],
    );
  }
}

class BigBlock extends StatelessWidget {
  final Text text;
  final AssetImage ico;
  final AssetImage background;
  final MaterialPageRoute dest;

  final margins = new EdgeInsets.only(
    left: 25.0,
    right: 25.0,
    top: 25.0,
  );

  BigBlock({Key key, this.text, this.ico, this.background, this.dest})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Expanded(
            child: InkWell(
          splashColor: Colors.amber,
          onTap: () {
            Navigator.push(context, dest);
          },
          child: Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: background,
                  fit: BoxFit.cover,
                ),
                borderRadius: new BorderRadius.all(Radius.circular(13.0)),
              ),
              margin: margins,
              height: 96.0,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Image(
                        image: ico,
                        color: null,
                        fit: BoxFit.scaleDown,
                        alignment: Alignment.center,
                        height: 40.0,
                      )
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      text,
                    ],
                  )
                ],
              )),
        ))
      ],
    );
  }
}

class Searcher extends StatefulWidget {
  @override
  _SearcherState createState() => _SearcherState();
}

class _SearcherState extends State<Searcher> {
  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 260,
      left: MediaQuery.of(context).size.width * 0.05,
      child: Container(
          padding: EdgeInsets.only(left: 25.0, right: 25.0),
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: new BorderRadius.all(Radius.circular(36.0)),
              boxShadow: <BoxShadow>[
                BoxShadow(
                  color: Colors.black38,
                  offset: Offset(0, 3),
                )
              ]),
          height: 50.0,
          width: MediaQuery.of(context).size.width * 0.90,
          alignment: Alignment.center,
          child: Row(children: <Widget>[
            Icon(
              Icons.search,
              color: Colors.black,
              size: 40.0,
            ),
            Text('Busca tu destino'),
          ])),
    );
  }
}

class Block extends StatelessWidget {
  final String descripcion;
  final MaterialPageRoute destination;

  Block({Key key, this.descripcion, this.destination}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return InkWell(
      splashColor: Colors.amberAccent,
      onTap: () {
        Navigator.push(context, destination);
      },
      child: Container(
          height: 80,
          alignment: Alignment.center,
          width: MediaQuery.of(context).size.width * 0.40,
          child: Text(descripcion,
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 24,
              )),
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: new BorderRadius.all(Radius.circular(25.0)),
              boxShadow: <BoxShadow>[
                BoxShadow(
                    color: Colors.black12,
                    offset: Offset(0, 0),
                    blurRadius: 3.0,
                    spreadRadius: 3.0)
              ])),
    );
  }
}

class RemoteData {
  final String id;
  final String nombre;
  final MaterialPageRoute destination;

  RemoteData(this.id, this.nombre, this.destination);
}
