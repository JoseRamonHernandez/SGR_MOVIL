import 'package:flutter/material.dart';
import 'package:sgr_application1/BNavigation/bottom_nav.dart';

class Locate extends StatelessWidget {
  const Locate({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text("LA PLAZUELA", style: TextStyle(color: Colors.white)),
          backgroundColor: Colors.black),
      //  bottomNavigationBar: BNavigator(),
      body: Center(
        child: Text(
            "Aquí se mostrará la información que se quiera compartir como la ubicación, numero de telefono, etc..."),
      ),
    );
  }
}
