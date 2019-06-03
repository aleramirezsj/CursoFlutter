import 'package:flutter/material.dart';
import 'package:comedor/widgets/app_button/boton.dart';

class DescripcionPlace extends StatelessWidget {
  String textoTitulo;
  int numeroEstrellas;
  String textoDescripcion;

  DescripcionPlace(this.textoTitulo,this.numeroEstrellas,this.textoDescripcion);

  @override
  Widget build(BuildContext context) {
    final estrella= Container(
        margin: EdgeInsets.only(
          top:300.0,
          right: 1.0,
        ),
        child: Icon(
          Icons.star,
          color: Colors.yellow,
        ),
      );

      final estrellaVacia= Container(
        margin: EdgeInsets.only(
          top:300.0,
          right: 1.0,
        ),
        child: Icon(
          Icons.star_border,
          color: Colors.yellow,
        ),
      );

        final estrellaMedioVacia= Container(
        margin: EdgeInsets.only(
          top:300.0,
          right: 1.0,
        ),
        child: Icon(
          Icons.star_half,
          color: Colors.yellow,
        ),
      );

    final descripcion = Container(
      margin: EdgeInsets.only(
        top:15.0,
        right: 15.0,
        left: 15.0,
      ),
      child: Text(this.textoDescripcion,
         style: TextStyle(
           fontSize: 14.0,//propiedad style: darle estilo a un elemento. widget TextStyle: darle estilos a un elemento tipo texto
          color: Color(0xFF56575a)//color al texto
        ),
        textAlign: TextAlign.justify//alineamos el parrafo con un espacio justificado
      ),
    );

    final tituloEstrellas = Row (
      children: <Widget>[
        Container (
          margin: EdgeInsets.only(
            top:300.0,
            left: 20.0,
            right: 20.0,
          ),
          child: Text(
            this.textoTitulo,
            style: TextStyle(fontSize: 30.0,
            fontFamily: "Lato",
            fontWeight: FontWeight.w900),
          textAlign: TextAlign.left,
          ),
        ),
        Row(
        children: <Widget>[
          estrella,
          estrella,
          estrella,
          estrellaMedioVacia,
          estrellaVacia,
        ],
      )
      ],
    );
    
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,      
      children: <Widget>[
      tituloEstrellas,
      descripcion,
      Boton("Reserva"),
      ],
    );   
  }
}