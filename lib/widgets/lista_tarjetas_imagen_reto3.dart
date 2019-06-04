import 'package:flutter/material.dart';
import 'tarjeta.dart';

class ListaTarjetasImagenReto3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView(
        padding: EdgeInsets.only(top: 15.0, left: 15.0),
        scrollDirection: Axis.vertical,
        children: <Widget>[
          Tarjeta('Milanesas con Papas', 'Menú de la casa', 'Oferta especial',
              "assets/images/beach.jpeg"),
          Tarjeta('Pollo a la pimienta', 'Menú feriado', 'Día de la patria',
              "assets/images/people.jpg"),
          Tarjeta('Asado con cuero', 'Beneficio normal', 'Cooperadora',
              "assets/images/river.jpeg"),
          Tarjeta('Asado con cuero', 'Beneficio normal', 'Cooperadora',
              "assets/images/beach_palm.jpeg"),
          Tarjeta('Asado con cuero', 'Beneficio normal', 'Cooperadora',
              "assets/images/mountain.jpeg"),
          Tarjeta('Asado con cuero', 'Beneficio normal', 'Cooperadora',
              "assets/images/mountain_stars.jpeg"),
        ],
      ),
    );
  }
}
