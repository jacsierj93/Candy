import 'package:flutter/material.dart';
import 'AppDrawer.dart';

class CustomHeader extends StatefulWidget {
  final String title;
  final Widget body;
  final AssetImage background;
  CustomHeader({Key key, this.title = "", this.background, this.body})
      : super(key: key);
  @override
  _CustomHeaderState createState() => _CustomHeaderState();
}

class _CustomHeaderState extends State<CustomHeader> {
  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.only(top: 10),
        decoration: BoxDecoration(
            color: Colors.white,
            image: (widget.background != null)
                ? DecorationImage(
                    alignment: Alignment.topCenter,
                    image: widget.background,
                    fit: BoxFit.fitWidth)
                : null),
        child: Scaffold(
          resizeToAvoidBottomPadding: false,
          backgroundColor: Colors.transparent,
          appBar: AppBar(
            backgroundColor: (widget.background != null)
                ? Colors.transparent
                : Color.fromRGBO(241, 90, 36, 1),
            toolbarOpacity: 1,
            centerTitle: true,
            title: Text(widget.title),
            elevation: 0.0,
          ),
          endDrawer: AppDrawer(),
          body: widget.body,
        ));
  }
}

class BigBlock extends StatelessWidget {
  final Text text;
  final AssetImage ico;
  final AssetImage background;
  final MaterialPageRoute dest;

  final paddings = new EdgeInsets.only(
    top: 10.0,
  );

  static final titleStyle = new TextStyle(
    fontSize: 32,
    color: Colors.white,
  );

  static final titleStyleB = new TextStyle(
      fontSize: 32, color: Colors.black, fontWeight: FontWeight.bold);

  BigBlock({Key key, this.text, this.ico, this.background, this.dest})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: Padding(
      padding: paddings,
      child: Row(
        children: <Widget>[
          Expanded(
            child: Material(
                elevation: 1.0,

                borderRadius: BorderRadius.circular(12),
                child:
                Ink.image(
              fit: BoxFit.contain,
              image: background,
              child: InkResponse(
                borderRadius: BorderRadius.circular(12),
                highlightShape: BoxShape.circle,
                radius: 30,
                onTap: () {
                  Navigator.push(context, dest);
                },
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
                ),
              ),
            )),
            /* child: Material(
                elevation: 1.0,
                borderRadius: BorderRadius.circular(12),
                color: Colors.white,
                child: Ink.image(
                  image: background,
                  child: InkResponse(
                    onTap: () {
                      Navigator.push(context, dest);
                    },
                    child:  Column(
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
                    ),
                  )),
              ) */
          )
        ],
      ),
    ));
  }
}

class Searcher extends StatefulWidget {
  @override
  _SearcherState createState() => _SearcherState();
}

class _SearcherState extends State<Searcher> {
  @override
  Widget build(BuildContext context) {
    return Container(
        // padding: EdgeInsets.only(left: 20),
        margin: EdgeInsets.only(bottom: 20),
        height: 50.0,
        width: MediaQuery.of(context).size.width * 0.8,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(33)),
            color: Colors.white,
            boxShadow: <BoxShadow>[
              BoxShadow(
                color: Colors.black38,
                offset: Offset(0, 3),
              )
            ]),
        child: ListTile(
          leading: const Icon(Icons.search),
          title: new TextField(
            decoration: new InputDecoration(
                hintText: "Busca tu destino",
                border: InputBorder.none,
                hintStyle: TextStyle(
                  fontSize: 18.0,
                  color: Colors.black38,
                )),
          ),
        ));
  }
}

class Block extends StatelessWidget {
  final String descripcion;
  final MaterialPageRoute destination;
  final String emphaText;

  Block({Key key, this.descripcion, this.destination, this.emphaText = ''})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return InkWell(
      splashColor: Colors.amberAccent,
      onTap: () {
        Navigator.push(context, destination);
      },
      child: Container(
          height: 60,
          alignment: Alignment.center,
          width: MediaQuery.of(context).size.width * 0.40,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Visibility(
                visible: emphaText != "",
                child: Text(emphaText,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: 27.0,
                        color: Colors.orange,
                        fontWeight: FontWeight.bold)),
              ),
              Text(descripcion,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: 19.0, color: Color.fromRGBO(128, 128, 128, 1)))
            ],
          ),
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

class CustomTextStyles {
  static final TextStyle menuWhite = TextStyle(
    fontSize: 20,
    color: Colors.white,
  );

  static final TextStyle titleWhite = TextStyle(
    fontSize: 23,
    color: Colors.white,
  );

  static final TextStyle sectionsBig = TextStyle(
    fontWeight: FontWeight.bold,
    fontSize: 24,
    color: Colors.white,
  );

  static final TextStyle subtitlesWhite = TextStyle(
    fontWeight: FontWeight.bold,
    fontSize: 22,
    color: Colors.white,
  );

  static final TextStyle subtitleBlack = TextStyle(
    fontWeight: FontWeight.bold,
    fontSize: 22,
    color: Colors.black38,
  );
}

class RemoteData {
  final String id;
  final String nombre;
  final MaterialPageRoute destination;

  RemoteData(this.id, this.nombre, this.destination);
}
