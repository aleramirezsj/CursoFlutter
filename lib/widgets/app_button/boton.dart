import 'package:flutter/material.dart';

class Boton extends StatelessWidget {
  String textoBoton="Reservar";
  @override
  Boton(this.textoBoton);

  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(
          top: 30.0,
          left:20.0,
          right: 20.0
        ),
        height: 50.0,
        width: 180.0,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30.0),
          gradient: LinearGradient(
            colors: [
              Color(0xFF4268D3),
              Color(0xFF584CD1)
            ],
            begin: FractionalOffset(0.2,0.0),
            end: FractionalOffset(1.0, 0.6),
            stops: [0.0, 0.6],
            tileMode: TileMode.clamp
          )
        ),                
        child: InkWell(
          onTap: (){
            Scaffold.of(context).showSnackBar(
              SnackBar(
                content: Text("Navegando"),
              )
            );
          },


        child: Center(
          child: Text(
            textoBoton,
            style: TextStyle(
              fontSize: 18.0,
              fontFamily: "Lato",
              color: Colors.white
            ),
          ),
        ),
      ),
    );
  }
}