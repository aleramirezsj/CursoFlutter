import 'package:flutter/material.dart';
import 'gradiente.dart';
import 'lista_tarjetas_imagen.dart';

class AppBarPropia extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Gradiente("Instituto Nº 20"),
        ListaTarjetasImagen()
      ],
      
    );
  }
}