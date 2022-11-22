import 'dart:html';

import 'package:flutter/material.dart';
import 'package:sgr_application1/models/Elementos.dart';
import 'package:sgr_application1/pages/home.dart';
import 'package:sgr_application1/pages/home_route.dart';

import 'package:http/http.dart' as http;

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
   late Future<List<Elementos>> _listadoElementos;

  /*Future<List<Elementos>>*/ _getElementos() async {
    final response =
        await http.get(Uri.http("127.0.0.1:8000", "/api/findCategoria/2"));

    if (response.statusCode == 200) {
      print(response.body);
    } else {
      throw Exception("Fallo en la conexion");
    }
  }

  @override
  void initState() {
    super.initState();
    _getElementos();
  }

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
