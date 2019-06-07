
import 'package:flutter/material.dart';

class IconoConCirculo extends StatelessWidget {
  
  IconData icono;
  Color color;
  double tamanio;

  IconoConCirculo(this.icono, this.color,this.tamanio);

  @override
  Widget build(BuildContext context) {
    return Container(
          margin: EdgeInsets.only(
          top: 10.0,
          left:10.0,
          right: 10.0
        ),
        height: 40.0,
        width: 40.0,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: Colors.white
        ),
        child: Icon(
          this.icono,
          color: this.color,
          size: this.tamanio,
        ),
      );
  }
}