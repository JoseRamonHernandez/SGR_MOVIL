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
          leading: IconButton(
              onPressed: null,
              icon: Icon(Icons.help_outline_rounded),
              color: Colors.white),
          automaticallyImplyLeading: false,
          backgroundColor: Colors.black),
      // bottomNavigationBar: BNavigator(),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: ListView(children: <Widget>[
            IconButton(
              icon: Icon(Icons.ad_units),
              iconSize: 60,
              color: Colors.tealAccent[700],
              onPressed: null,
            ),
            Text("Aplicación móvil para levantamiento de pedido"),
          ]),
        ),
      ),
    );
  }
}
