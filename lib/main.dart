import 'dart:html';

import 'package:flutter/material.dart';
import 'package:sgr_application1/pages/home.dart';
import 'package:sgr_application1/pages/home_route.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "SGR",
      home: Inicio(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class Inicio extends StatefulWidget {
  Inicio({Key? key}) : super(key: key);

  @override
  _InicioState createState() => _InicioState();
}

class _InicioState extends State<Inicio> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        /*  appBar: AppBar(
          title: Text("Restaurante LA PLAZUELA"),
          backgroundColor: Colors.orangeAccent,
        ),*/
        body: Container(
          child: ConstrainedBox(
              constraints: BoxConstraints.expand(),
              child: FlatButton(
                  onPressed: () => {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Home_route()))
                      },
                  padding: EdgeInsets.all(0.0),
                  child: Image.asset("assets/Logo-plazuela.jpeg"))),
        ));
  }
}
