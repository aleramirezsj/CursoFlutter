import 'package:flutter/material.dart';
import 'package:comedor/widgets/encabezado_titulo_menu.dart';
import 'package:comedor/widgets/lista_tarjetas_imagen_reto3.dart';

class VentanaReto3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 600.0,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,          
          children: <Widget>[
            EncabezadoTituloMenu("Diseñadores"),
            Expanded(
              child:ListaTarjetasImagenReto3(),
            )
          ],
        ),
      
      
    );
  }
}