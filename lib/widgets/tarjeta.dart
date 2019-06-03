import 'package:flutter/material.dart';



class Tarjeta extends StatelessWidget {
  String textoTitulo;
  String textoLeyendaInferior;
  String textoSubTitulo;
  String pathImagen;

  Tarjeta(this.textoTitulo,this.textoSubTitulo,this.textoLeyendaInferior,this.pathImagen);

  @override
  Widget build(BuildContext context) {
    final iconoCorreoGris= Container(
          margin: EdgeInsets.only(
          top: 10.0,
          left:10.0,
          right: 10.0
        ),
        height: 40.0,
        width: 40.0,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: Colors.grey
        ),
        child: Icon(
          Icons.mail,
          color: Colors.black,
        ),
      );

    final foto= Container(
      margin: EdgeInsets.only(
        top: 10.0,
        left: 20.0
      ),
      width: 60.0,
      height: 60.0,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        image: DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage(this.pathImagen)
        )
      ),
    );

    final tituloTarjeta = Container(
      margin: EdgeInsets.only(
        top:10.0,
        right: 20.0,
        left: 20.0,
      ),
      child: Text(this.textoTitulo,
         style: TextStyle(//propiedad style: darle estilo a un elemento. widget TextStyle: darle estilos a un elemento tipo texto
          fontSize: 14.0 ,
          color: Color(0xFF56575a)//color al texto
        ),
        textAlign: TextAlign.left//alineamos el parrafo con un espacio justificado
      ),
    );



      final subTituloTarjeta = Container(
      margin: EdgeInsets.only(
        top:1.0,
        right: 15.0,
        left: 20.0,
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
      Expanded(
        child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
            tituloTarjeta,
          subTituloTarjeta,
        ],
      ),
      ),
      iconoCorreoGris
      
    ],
    ); 
  }
}