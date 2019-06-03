import 'package:flutter/material.dart';



class Review extends StatelessWidget {
  String textoTitulo;
  String textoLeyendaInferior;
  String textoSubTitulo;
  String pathImagen;

  Review(this.textoTitulo,this.textoSubTitulo,this.textoLeyendaInferior,this.pathImagen);

  @override
  Widget build(BuildContext context) {
    final estrella= Container(
        margin: EdgeInsets.only(
          top:3.0,
          right: 1.0,
        ),
        child: Icon(
          Icons.star,
          color: Colors.yellow,
        ),
      );

    final foto= Container(
      margin: EdgeInsets.only(
        top: 2.0,
        left: 20.0
      ),
      width: 70.0,
      height: 70.0,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        image: DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage(this.pathImagen)
        )
      ),
    );

    final tituloReview = Container(
      margin: EdgeInsets.only(
        top:10.0,
        right: 20.0,
        left: 0.0,
      ),
      child: Text(this.textoTitulo,
         style: TextStyle(//propiedad style: darle estilo a un elemento. widget TextStyle: darle estilos a un elemento tipo texto
          fontSize: 20.0 ,
          color: Color(0xFF56575a)//color al texto
        ),
        textAlign: TextAlign.left//alineamos el parrafo con un espacio justificado
      ),
    );

    final leyendaInferiorReview = Container(
      margin: EdgeInsets.only(
        top:2.0,
        right: 20.0,
        left: 20.0,
      ),
      child: Text(this.textoLeyendaInferior,
         style: TextStyle(//propiedad style: darle estilo a un elemento. widget TextStyle: darle estilos a un elemento tipo texto
          fontSize: 14.0 ,
          color: Color(0xFF56575a)//color al texto
        ),
        textAlign: TextAlign.left//alineamos el parrafo con un espacio justificado
      ),
    );

      final subTituloReview = Container(
      margin: EdgeInsets.only(
        top:1.0,
        right: 15.0,
        left: 15.0,
      ),
      child: Text(this.textoSubTitulo,
         style: TextStyle(//propiedad style: darle estilo a un elemento. widget TextStyle: darle estilos a un elemento tipo texto
          fontSize: 12.0 ,
          color: Colors.grey//color al texto
        ),
        textAlign: TextAlign.left//alineamos el parrafo con un espacio justificado
      ),
    );

    return Row(children: <Widget>[
      foto,
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          tituloReview,
          Row(children: <Widget>[
            subTituloReview,
            estrella,
            estrella,
            estrella,
            estrella,
            estrella
          ],),
          leyendaInferiorReview
        ],
      )
    ],
    ); 
  }
}