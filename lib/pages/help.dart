import 'package:flutter/material.dart';
import 'package:sgr_application1/BNavigation/bottom_nav.dart';

class Help extends StatelessWidget {
  const Help({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text("Ayuda", style: TextStyle(color: Colors.white)),
          backgroundColor: Colors.black),
      // bottomNavigationBar: BNavigator(),
      body: Center(
        child:
            Text("Aquí se mostrará la información de en que consiste la app"),
      ),
    );
  }
}
