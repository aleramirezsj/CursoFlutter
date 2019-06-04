import 'package:flutter/material.dart';

class EstadoPantallaBuscar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: new Column(
          mainAxisAlignment: MainAxisAlignment.start,
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            new Text(
              "Buscar",
              style: new TextStyle(
                  fontSize: 19.0,
                  color: const Color(0xFF000000),
                  fontWeight: FontWeight.w300,
                  fontFamily: "Roboto"),
            ),
            new Image.asset(
              'assets/images/mountain.jpeg',
              fit: BoxFit.fill,
            )
          ]),
      padding: const EdgeInsets.fromLTRB(21.0, 48.0, 6.0, 50.0),
      alignment: Alignment.center,
    );
  }
}
