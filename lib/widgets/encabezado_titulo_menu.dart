import 'package:flutter/material.dart';

class EncabezadoTituloMenu extends StatelessWidget {
  String titulo;

  EncabezadoTituloMenu(this.titulo);
  @override
  Widget build(BuildContext context) {
    final iconoMenu= Container(
        margin: EdgeInsets.only(
          top:45.0,
          left: 30.0,
        ),
        child: Icon(
          Icons.menu,
          color: Colors.black,
        ),
      );
      
    final zonaTitulo = Container(
      height: 100.0, 
      padding: EdgeInsets.only(
        top:30.0,
        left: 80.0
      ),   
      decoration: BoxDecoration(
        gradient: LinearGradient(
            colors: [
              Color(0xFF4268D3),
              Color(0xFF584CD1),
            ],
            begin: FractionalOffset(0.2, 0.0),
            end: FractionalOffset(1.0, 0.6),
              stops: [0.0,0.6],
              tileMode: TileMode.clamp
        )
      ),

      child: Text(
          this.titulo,
          style: TextStyle(
          color: Colors.white,
          fontSize: 30.0,
          fontFamily: "Lato",
          fontWeight: FontWeight.bold,//color al texto
        ),
        textAlign: TextAlign.center//alineamos el parrafo con un espacio justificado
        
      ),
      alignment: Alignment(-0.9, -0.6),
    );
    return Stack(
        children: <Widget>[
          zonaTitulo,
          iconoMenu,
        ],
    );
  }
}
