import 'package:flutter/material.dart';

class MiFloatingActionButton extends StatefulWidget {
  bool mini=true;
  IconData icono;
  Color colorDeFondo;

  MiFloatingActionButton(this.mini,this.icono,this.colorDeFondo);
  @override
  State<StatefulWidget> createState() => _MiFloatingActionButtonState(this.mini, this.icono, this.colorDeFondo);
}

class _MiFloatingActionButtonState extends State<MiFloatingActionButton> {
  bool mini=true;
  IconData icono;
  Color colorDeFondo;

  _MiFloatingActionButtonState(this.mini,this.icono, this.colorDeFondo);

  void fabPresionado() {
    Scaffold.of(context).showSnackBar(SnackBar(
      content: Text("Agregado a favoritos"),
    ));
  }

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      backgroundColor: this.colorDeFondo,
      mini: this.mini ,
      tooltip: "Favorito",
      onPressed: fabPresionado,
      child: new Icon(this.icono),
    );
  }
}
