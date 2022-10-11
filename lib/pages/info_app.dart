import 'package:flutter/material.dart';
import 'package:sgr_application1/BNavigation/bottom_nav.dart';

class Info_app extends StatelessWidget {
  const Info_app({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title:
              Text("Derechos de Autor", style: TextStyle(color: Colors.white)),
          backgroundColor: Colors.black),
      // bottomNavigationBar: BNavigator(),
      body: Center(
        child: Text(
            "Aquí se mostrará la información de los desarrolladores involucrados de la app"),
      ),
    );
  }
}
