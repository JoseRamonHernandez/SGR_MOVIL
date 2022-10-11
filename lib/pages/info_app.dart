import 'package:flutter/material.dart';
import 'package:sgr_application1/BNavigation/bottom_nav.dart';

class Info_app extends StatelessWidget {
  const Info_app({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
            title: Text("Derechos de Autor",
                style: TextStyle(color: Colors.white)),
            backgroundColor: Colors.yellowAccent),
        // bottomNavigationBar: BNavigator(),
        body: Padding(
          padding: const EdgeInsets.all(25.0),
          child: Column(children: [
            Text("Esta aplicación móvil, fue desarrollada por: ",
                style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold)),
            Text("\n"),
            Text(
              " - T.S.U VÍCTOR MANUEL TAMAYO BRIONES",
              style: TextStyle(fontSize: 15.0),
              textAlign: TextAlign.center,
            ),
            Text(
              " - T.S.U YESSYCA GARCIA CAMPOS",
              style: TextStyle(fontSize: 15.0),
              textAlign: TextAlign.center,
            ),
            Text(
              " - T.S.U DULCE CONCEPCIÓN JUAREZ SOLEDAD",
              style: TextStyle(fontSize: 15.0),
              textAlign: TextAlign.center,
            ),
            Text(
              " - T.S.U JOSÉ RAMÓN HERNÁNDEZ MUÑOZ",
              style: TextStyle(fontSize: 15.0),
              textAlign: TextAlign.center,
            ),
            Text("\n"),
            Text(
                "Alumnos de la Universidad Tecnologica de Tlaxcala en la carrera Ingenieria en Desarrollo y Gestión de Software",
                style: TextStyle(fontSize: 20.0),
                textAlign: TextAlign.justify),
            //Text("\n"),
            Image.asset("assets/logoUTT.png")
          ]),
        ));
  }
}
