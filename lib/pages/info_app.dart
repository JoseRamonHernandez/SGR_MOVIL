import 'package:flutter/material.dart';
import 'package:sgr_application1/pages/home.dart';

class Info_app extends StatefulWidget {
  static String id = 'info_app';

  @override
  State<Info_app> createState() => _Info_appState();
}

class _Info_appState extends State<Info_app> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.amber[600],
          title:
              Text("Derechos de Autor", style: TextStyle(color: Colors.white)),
          leading: IconButton(
              onPressed: () => {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => HomePage()))
                  },
              icon: Icon(Icons.arrow_back),
              color: Colors.white),
        ),
        body: ListView(children: <Widget>[
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
