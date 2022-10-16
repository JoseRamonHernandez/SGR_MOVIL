import 'package:flutter/material.dart';
import 'package:sgr_application1/BNavigation/bottom_nav.dart';

class Info_app extends StatelessWidget {
  const Info_app({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
          title:
              Text("Derechos de Autor", style: TextStyle(color: Colors.white)),
          automaticallyImplyLeading: false,
          backgroundColor: Colors.yellowAccent),
      // bottomNavigationBar: BNavigator(),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: ListView(children: <Widget>[
          Text("Esta aplicación móvil, fue desarrollada por: ",
              style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.normal)),
          Text("\n"),
          Text(
            " - T.S.U VÍCTOR MANUEL TAMAYO BRIONES",
            style: TextStyle(fontSize: 15.0, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          Text(
            "\n - T.S.U YESSYCA GARCIA CAMPOS",
            style: TextStyle(fontSize: 15.0, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          Text(
            "\n - T.S.U DULCE CONCEPCIÓN JUAREZ SOLEDAD",
            style: TextStyle(fontSize: 15.0, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          Text(
            "\n - T.S.U JOSÉ RAMÓN HERNÁNDEZ MUÑOZ",
            style: TextStyle(fontSize: 15.0, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          Text("\n"),
          Text(
              "Alumnos de la Universidad Tecnológica de Tlaxcala en la carrera Ingeniería en Desarrollo y Gestión de Software\n",
              style: TextStyle(fontSize: 20.0),
              textAlign: TextAlign.justify),
          //Text("\n"),
          Image.asset("assets/logoUTT.png")
        ]),
      ),
    );
  }
}
