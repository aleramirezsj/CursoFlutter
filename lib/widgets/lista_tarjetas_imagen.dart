import 'package:comedor/widgets/tarjeta_imagen.dart';
import 'package:flutter/material.dart';
import 'tarjeta_imagen.dart';

class ListaTarjetasImagen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height:300.0,
      width: 600.0,
      child: ListView(
        padding: EdgeInsets.all(15.0),
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          TarjetaImagen("assets/images/beach.jpeg"),
          TarjetaImagen("assets/images/people.jpg"),
          TarjetaImagen("assets/images/river.jpeg"),
          TarjetaImagen("assets/images/beach_palm.jpeg"), 
          TarjetaImagen("assets/images/mountain.jpeg"),         
          TarjetaImagen("assets/images/mountain_stars.jpeg"),
        ],
      ),
    );
  }
}