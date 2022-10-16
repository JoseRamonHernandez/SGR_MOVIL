import 'package:flutter/material.dart';
import 'package:sgr_application1/BNavigation/bottom_nav.dart';

class Help extends StatelessWidget {
  const Help({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
          title: Text("Ayuda", style: TextStyle(color: Colors.white)),
          automaticallyImplyLeading: false,
          backgroundColor: Colors.black),
      // bottomNavigationBar: BNavigator(),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: ListView(children: <Widget>[
            Icon(
              Icons.ad_units,
              color: Colors.blue,
              size: 120.0,
            ),
            Text("Aplicación móvil para levantamiento de pedido",
                textAlign: TextAlign.center),
            Padding(padding: EdgeInsets.all(10)),
            Icon(
              Icons.ad_units,
              color: Colors.blue,
              size: 120.0,
            ),
            Text("Aplicación móvil para levantamiento de pedido",
                textAlign: TextAlign.center),
            Padding(padding: EdgeInsets.all(10))
          ]),
        ),
      ),
    );
  }
}
