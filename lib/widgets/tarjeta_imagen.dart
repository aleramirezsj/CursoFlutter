import 'package:flutter/material.dart';
import 'app_button/mi_floating_action_button.dart';

class TarjetaImagen extends StatelessWidget {
  String pathImage = "assets/images/beach.jpeg";

  TarjetaImagen(this.pathImage);
  @override
  Widget build(BuildContext context) {
    final tarjeta = Container(
      height: 350.0,
      width: 250.0,
      margin: EdgeInsets.only(top: 80.0, left: 20.0),
      decoration: BoxDecoration(
          image: DecorationImage(image: AssetImage(pathImage)),
          borderRadius: BorderRadius.all(Radius.circular(10.0)),
          shape: BoxShape.rectangle,
          boxShadow: <BoxShadow>[
            BoxShadow(
                color: Colors.black38,
                blurRadius: 15.0,
                offset: Offset(0.0, 7.0))
          ]),
    );
    return Stack(
      alignment: Alignment(0.9, 1.1),
      children: <Widget>[
        tarjeta,
        MiFloatingActionButton(true, Icons.favorite_border,Color(0xFF000000)),
      ],
    ); 
  }
}
