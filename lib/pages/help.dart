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
            Text("TEXTO DESCRIPTIVO", textAlign: TextAlign.center),
            Padding(padding: EdgeInsets.all(20)),
            Icon(
              Icons.restaurant_menu,
              color: Colors.blue,
              size: 120.0,
            ),
            Text("TEXTO DESCRIPTIVO", textAlign: TextAlign.center),
            Padding(padding: EdgeInsets.all(20)),
            Icon(
              Icons.add_a_photo,
              color: Colors.blue,
              size: 120.0,
            ),
            Text("TEXTO DESCRIPTIVO", textAlign: TextAlign.center),
            Padding(padding: EdgeInsets.all(20)),
            Icon(
              Icons.error,
              color: Colors.blue,
              size: 120.0,
            ),
            Text("TEXTO DESCRIPTIVO", textAlign: TextAlign.center),
            Padding(padding: EdgeInsets.all(20))
          ]),
        ),
      ),
    );
  }
}
