import 'package:comedor/widgets/fragments/imagen_y_detalle.dart';
import 'package:flutter/material.dart';

class ListaImagenesRetoFinal extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height:200.0,
      width: 350.0,
      child: ListView(
        padding: EdgeInsets.all(15.0),
        scrollDirection: Axis.vertical,
        children: <Widget>[
          ImagenYDetalle("assets/images/beach.jpeg"),
          ImagenYDetalle("assets/images/people.jpg"),
          ImagenYDetalle("assets/images/river.jpeg"),
          ImagenYDetalle("assets/images/beach_palm.jpeg"), 
          ImagenYDetalle("assets/images/mountain.jpeg"),         
          ImagenYDetalle("assets/images/mountain_stars.jpeg"),
        ],
      ),
    );
  }
}