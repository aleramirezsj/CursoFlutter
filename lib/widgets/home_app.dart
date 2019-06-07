import 'package:comedor/screens/ventana_reto3.dart';
import 'package:comedor/widgets/estado_pantalla1.dart';
import 'package:comedor/widgets/estado_pantalla_buscar.dart';
import 'package:comedor/widgets/estado_perfil_usuario.dart';
import 'package:comedor/widgets/lista_imagenes_reto_final.dart';
import 'package:flutter/material.dart';

class HomeApp extends StatefulWidget {
  @override
  _HomeAppState createState() => _HomeAppState();
}

class _HomeAppState extends State<HomeApp> {
  int indicePantallaSeleccionada = 0;
  final List<Widget> pantallasApp = [
    EstadoPantalla1(),
    //EstadoPantallaBuscar(),
    VentanaReto3(),
    EstadoPerfilUsuario(),
   // ListaImagenesRetoFinal(),
  ];

  void onTapSeleccionPantalla(int index) {
    setState(() {
      indicePantallaSeleccionada = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pantallasApp[indicePantallaSeleccionada],
      bottomNavigationBar: Theme(
          data: Theme.of(context)
              .copyWith(canvasColor: Colors.white, primaryColor: Colors.purple),
          child: BottomNavigationBar(
            onTap: onTapSeleccionPantalla,
            currentIndex: indicePantallaSeleccionada,
            items: [
              BottomNavigationBarItem(
                  icon: Icon(Icons.home), title: Text("Inicio")),
             // BottomNavigationBarItem(
                //  icon: Icon(Icons.search), title: Text("Buscar")),
              BottomNavigationBarItem(
                  icon: Icon(Icons.list), title: Text("Lista")),
              BottomNavigationBarItem(
                  icon: Icon(Icons.person), title: Text("Cuenta")),                  
            ],
          )),
    );
  }
}
