import 'package:comedor/widgets/review.dart';
import 'package:flutter/material.dart';



class ReviewList extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Review('Milanesas con Papas', 'Menú de la casa', 'Oferta especial','assets/images/milanesa.png'),
        Review('Pollo a la pimienta', 'Menú feriado', 'Día de la patria','assets/images/pollo.png'),
        Review('Asado con cuero', 'Beneficio normal', 'Cooperadora','assets/images/asado.png'),
      ],
    );
  }
}