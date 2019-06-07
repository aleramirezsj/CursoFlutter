import 'package:comedor/widgets/fragments/icono_con_circulo.dart';
import 'package:comedor/widgets/tarjeta_imagen.dart';
import 'package:comedor/widgets/tarjeta_imagen_reto_final.dart';
import 'package:flutter/material.dart';

class ImagenYDetalle extends StatelessWidget {
  String imagen;

  ImagenYDetalle(this.imagen);
  @override
  Widget build(BuildContext context) {
    return Container(
            child:
              new Stack(
                children: <Widget>[
                  new Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    mainAxisSize: MainAxisSize.max,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      new Container(
                        margin: EdgeInsets.only(
                                top:1.0,
                                bottom: 5.0,
                                left: 55.0,
                              ),                        
                        child: Text(
                        "Titulo de imagen ",
                          style: new TextStyle(fontSize:18.0,
                          color: const Color(0xFF000000),
                          fontWeight: FontWeight.w600,
                          fontFamily: "Roboto"),
                        ),
                      ),
                      new Container(
                        margin: EdgeInsets.only(
                                top:1.0,
                                bottom: 5.0,
                                left: 55.0,
                              ),                        
                          child: Text(
                        "texto menor luego del titulo",
                          style: new TextStyle(fontSize:12.0,
                          color: const Color(0xFF000000),
                          fontWeight: FontWeight.w200,
                          fontFamily: "Roboto"),
                        ),
                      ),
                      new Text(
                      "segundo renglon",
                        style: new TextStyle(fontSize:12.0,
                        color: const Color(0xFF000000),
                        fontWeight: FontWeight.w200,
                        fontFamily: "Roboto"),
                      ),
    
                      new Text(
                      "Steps 1232323",
                        style: new TextStyle(fontSize:14.0,
                        color: Colors.yellowAccent,
                        fontWeight: FontWeight.w200,
                        fontFamily: "Roboto"),
                      )
                    ]
    
                  ),
                  TarjetaImagenRetoFinal(this.imagen),
                  IconoConCirculo(Icons.favorite_border,Colors.lightGreen,29.0),
                ]
    
              ),
    
            padding: const EdgeInsets.all(0.0),
            alignment: Alignment.center,
            width: 200.0,
            height: 100.0,
          );
    
      
    }
}