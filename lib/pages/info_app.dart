import 'package:flutter/material.dart';
import 'package:sgr_application1/pages/home.dart';

import '../widgets/widget_drawer.dart';

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
              Text('Derechos de Autor', style: TextStyle(color: Colors.white)),
        ),
        drawer: MenuLateral(),
        body: ListView(children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              child: Text("Esta aplicación móvil, fue desarrollada por: ",
                  style:
                      TextStyle(fontSize: 20.0, fontWeight: FontWeight.normal)),
            ),
          ),
          Text("\n"),
          Column(
            children: [
              Text(
                "Rol: Scrum Master",
                style: TextStyle(fontSize: 12.0, fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              ),
              Text(
                " - T.S.U VÍCTOR MANUEL TAMAYO BRIONES",
                style: TextStyle(fontSize: 15.0, fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: CircleAvatar(
                  radius: 120,
                  child: CircleAvatar(
                    backgroundImage: AssetImage("nosotros/vic.png"),
                    radius: 120,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "Rol: Product Owner",
                  style: TextStyle(fontSize: 12.0, fontWeight: FontWeight.bold),
                  textAlign: TextAlign.center,
                ),
              ),
              Text(
                "\n - T.S.U DULCE CONCEPCIÓN JUAREZ SOLEDAD",
                style: TextStyle(fontSize: 15.0, fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: CircleAvatar(
                  radius: 120,
                  child: CircleAvatar(
                    backgroundImage: AssetImage("nosotros/dulce.png"),
                    radius: 120,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "Rol: Development Team",
                  style: TextStyle(fontSize: 12.0, fontWeight: FontWeight.bold),
                  textAlign: TextAlign.center,
                ),
              ),
              Text(
                "\n - T.S.U YESSYCA GARCIA CAMPOS",
                style: TextStyle(fontSize: 15.0, fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: CircleAvatar(
                  radius: 120,
                  child: CircleAvatar(
                    backgroundImage: AssetImage("nosotros/yess.png"),
                    radius: 120,
                  ),
                ),
              ),
              Text(
                "\n - T.S.U JOSÉ RAMÓN HERNÁNDEZ MUÑOZ",
                style: TextStyle(fontSize: 15.0, fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: CircleAvatar(
                  radius: 120,
                  child: CircleAvatar(
                    backgroundImage: AssetImage("nosotros/ramon.png"),
                    radius: 120,
                  ),
                  //CircleAvatar
                ),
              ),
            ],
          ),

          Text("\n"),
          Container(
            child: Center(
              child: Text(
                  "Alumnos de la Universidad Tecnológica de Tlaxcala en la carrera Ingeniería en Desarrollo y Gestión de Software\n",
                  style: TextStyle(fontSize: 20.0),
                  textAlign: TextAlign.justify),
            ),
          ),
          //Text("\n"),
          Image.asset("assets/logoUTT.png")
        ]),
      ),
    );
  }
}
