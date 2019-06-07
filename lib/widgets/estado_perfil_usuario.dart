import 'package:comedor/widgets/app_button/mi_floating_action_button.dart';
import 'package:comedor/widgets/fragments/icono_con_circulo.dart';
import 'package:comedor/widgets/lista_imagenes_reto_final.dart';
import 'package:flutter/material.dart';

class EstadoPerfilUsuario extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          height: 330.0,
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  colors: [
                    Color(0xFF4268D3),
                    Color(0xFF584CD1),
                  ],
                  begin: FractionalOffset(0.2, 0.0),
                  end: FractionalOffset(1.0, 0.6),
                  stops: [0.0, 0.6],
                  tileMode: TileMode.clamp)),
          child: new Column(
              mainAxisAlignment: MainAxisAlignment.start,
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                new Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    mainAxisSize: MainAxisSize.max,
                    // crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      new Container(
                        padding: EdgeInsets.only(left: 10.0),
                        child: new Text(
                          "Perfil",
                          style: new TextStyle(
                              fontSize: 42.0,
                              color: Colors.white,
                              fontWeight: FontWeight.w600,
                              fontFamily: "Roboto"),
                        ),
                        alignment: Alignment.bottomLeft,
                        width: 155.0,
                        height: 120.0,
                      ),
                      new Container(
                        child: new Icon(Icons.settings,
                            color: Colors.grey, size: 17.0),
                        padding: const EdgeInsets.all(0.0),
                        alignment: Alignment.bottomRight,
                        width: 150.0,
                        height: 100.0,
                      )
                    ]),
                new Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    mainAxisSize: MainAxisSize.max,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Container(
                        margin:
                            EdgeInsets.only(top: 10.0, left: 20.0, right: 20.0),
                        width: 70.0,
                        height: 70.0,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(
                                width: 2.0, color: const Color(0xFFFFFFFF)),
                            image: DecorationImage(
                                fit: BoxFit.cover,
                                image: AssetImage("assets/images/people.jpg"))),
                      ),
                      new Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            new Text(
                              "Rubén Alejandro Ramirez",
                              style: new TextStyle(
                                  fontSize: 16.0,
                                  color: Colors.white54,
                                  fontWeight: FontWeight.w600,
                                  fontFamily: "Roboto"),
                            ),
                            new Text(
                              "aleramirezsj@gmail.com",
                              style: new TextStyle(
                                  fontSize: 12.0,
                                  color: Colors.white70,
                                  fontWeight: FontWeight.w400,
                                  fontFamily: "Roboto"),
                            )
                          ])
                    ]),
                new Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    mainAxisSize: MainAxisSize.max,
                    //crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      new Container(
                        child: new Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            mainAxisSize: MainAxisSize.min,
                            //crossAxisAlignment: CrossAxisAlignment.baseline,
                            children: <Widget>[
                              Container(
                                  padding: EdgeInsets.only(left: 20.0),
                                  child: IconoConCirculo(Icons.bookmark,
                                      Colors.lightBlueAccent, 29.0)),
                              Container(
                                  padding: EdgeInsets.only(left: 20.0),
                                  child: IconoConCirculo(Icons.ondemand_video,
                                      Colors.lightBlueAccent, 29.0))
                              //child: Icon(Icons.ondemand_video,
                              //    color: const Color(0xFF000000), size: 29.0)
                            ]),
                        alignment: Alignment.center,
                        width: 160.0,
                        height: 50.0,
                      ),
                      new Container(
                        padding: const EdgeInsets.all(0.0),
                        alignment: Alignment.center,
                        width: 50.0,
                        height: 50.0,
                        child: MiFloatingActionButton(
                            false, Icons.add, Colors.grey),
                      ),
                      new Container(
                        child: new Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            mainAxisSize: MainAxisSize.min,
                            //crossAxisAlignment: CrossAxisAlignment.baseline,
                            children: <Widget>[
                              Container(
                                  padding: EdgeInsets.only(right: 20.0),
                                  child: IconoConCirculo(Icons.mail_outline,
                                      Colors.lightBlueAccent, 29.0)),
                              //Icon(Icons.mail_outline,
                              //color: const Color(0xFF000000), size: 29.0)),
                              IconoConCirculo(
                                  Icons.person, Colors.lightBlueAccent, 29.0)
                              //new Icon(Icons.person,
                              //   color: const Color(0xFF000000), size: 29.0)
                            ]),
                        padding: const EdgeInsets.all(0.0),
                        alignment: Alignment.center,
                        width: 140.0,
                        height: 50.0,
                      )
                    ])
              ]),
          padding: const EdgeInsets.all(0.0),
          alignment: Alignment.center,
        ),
        ListaImagenesRetoFinal(),
      ],
    );
  }
}
