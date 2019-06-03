import 'package:flutter/material.dart';

class MiFloatingActionButton extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _MiFloatingActionButtonState();
}

class _MiFloatingActionButtonState extends State<MiFloatingActionButton> {
  void fabPresionado() {
    Scaffold.of(context).showSnackBar(SnackBar(
      content: Text("Agregado a favoritos"),
    ));
  }

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      backgroundColor: Color(0xFF000000),
      mini: true,
      tooltip: "Favorito",
      onPressed: fabPresionado,
      child: new Icon(Icons.favorite_border),
    );
  }
}
