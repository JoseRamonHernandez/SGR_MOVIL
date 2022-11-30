import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:sgr_application1/pages/buy.dart';
import 'package:sgr_application1/pages/home.dart';

import 'models/Platillos.dart';
import 'package:http/http.dart' as http;

class Detail1Page extends StatefulWidget {
  final String id;
  Detail1Page(this.id, {super.key});

  @override
  _Detail1PageState createState() => _Detail1PageState();
}

class _Detail1PageState extends State<Detail1Page> {
  late Future<List<Platillos>> _listadoPlatillos;

  var httpsUri = Uri(
      scheme: 'https',
      host: 'piedra-back.herokuapp.com',
      path: '/api/dishes/get-all');

  Future<List<Platillos>> _getPlatillos() async {
    final response = await http.get(httpsUri);

    List<Platillos> platillos = [];

    if (response.statusCode == 200) {
      //print(response.body);
      String body = utf8.decode(response.bodyBytes);

      final jsonData = jsonDecode(body);

      print(jsonData["data"][0]["photos"][0]["path"]);

      for (var item in jsonData["data"]) {
        platillos.add(Platillos(item["name"], item["price"], item["_id"],
            item["photos"][0]["path"]));
        //print(platillos);
      }

      return platillos;
    } else {
      throw Exception("Falló la conexión");
    }
  }

  @override
  void initState() {
    super.initState();
    _listadoPlatillos = _getPlatillos();
    //  _getListado();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.amber[600],
          title: Text('Descripción del platillo'),
          leading: IconButton(
              onPressed: () => {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => HomePage()))
                  },
              icon: Icon(Icons.arrow_back),
              color: Colors.white),
        ),
        // bottomNavigationBar: BNavigator(),
        body: ListView(
          children: <Widget>[
            Text('Salmón a la plancha con verduras',
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold)),
            Image.asset('assets/salmon.png'),
            // Text("\n"),
            Text("PRECIO DEL PLATILLO: 700 pesos \n"),
            Text(
                "Las espinacas, repollo (col) y la variedad de verduras que puede llevar crean la base más rica. Un platillo excepcional para la familia.",
                style: TextStyle(fontSize: 10.0),
                textAlign: TextAlign.justify),
            IconButton(
              icon: Icon(Icons.add_shopping_cart_rounded),
              iconSize: 40,
              color: Colors.amber[600],
              onPressed: () => {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => BuyPage()))
              },
            ),
          ],
        ),
      ),
    );
  }
}
