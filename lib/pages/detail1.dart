import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:sgr_application1/pages/buy.dart';
import 'package:sgr_application1/pages/home.dart';

import 'models/PlatilloDetail.dart';
import 'package:http/http.dart' as http;

import 'package:intl/intl.dart';

class Detail1Page extends StatefulWidget {
  final String id;
  final String name;
  final String description;
  final String price;
  final String photo;
  final String restaurantId;
  Detail1Page(this.id, this.name, this.description, this.price, this.photo,
      this.restaurantId,
      {super.key});

  @override
  _Detail1PageState createState() => _Detail1PageState();
}

class _Detail1PageState extends State<Detail1Page> {
  /* late Future<List<PlatillosDetail>> _listadoPlatillos;

  var httpsUri = Uri(
      scheme: 'https',
      host: 'piedra-mongo-back-production.up.railway.app',
      path: '/api/dishes/get-by-id');

  Future<List<PlatillosDetail>> _getPlatillos() async {
    final response = await http.post(httpsUri, body: {"id": widget.id});

    /* var url =
        Uri.parse('https://piedra-back.herokuapp.com/api/dishes/get-by-id');
    var response =
        await http.post(url, body: {'id': '634ba2f4eff40f56e804d47a'});
*/
    List<PlatillosDetail> platillos = [];
    if (response.statusCode == 200 || response.statusCode == 201) {
      // print(response.body);
      String body = utf8.decode(response.bodyBytes);

      final jsonData = jsonDecode(body);

      print(jsonData);

      for (var item in jsonData["data"]) {
        platillos.add(PlatillosDetail(item["name"], item["price"],
            item['description'], item["_id"], item["photos"][0]["path"]));
        //print(platillos);
      }
    } else {
      throw Exception("Falló la conexión");
    }
    return platillos;
  }

  @override
  void initState() {
    super.initState();
    _listadoPlatillos = _getPlatillos();
    //  _getListado();
  }
*/
  @override
  Widget build(BuildContext context) {
    int precio = int.parse(widget.price);
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
            Container(
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Text(widget.name,
                    style:
                        TextStyle(fontSize: 25, fontWeight: FontWeight.bold)),
              ),
            ),
            //Image.asset('assets/salmon.png'),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                child: Image.network(widget.photo),
                width: 300,
                height: 400,
              ),
            ),
            Text("\n"),
            Container(
              child: Padding(
                padding: const EdgeInsets.all(6.0),
                child: Column(
                  children: [
                    Text("", style: TextStyle(fontSize: 25.0)),
                    Text("PRECIO DEL PLATILLO: " + widget.price + " pesos MXN",
                        style: TextStyle(fontSize: 25.0)),
                    Text("\nDescripción: " + widget.description,
                        style: TextStyle(fontSize: 20.0),
                        textAlign: TextAlign.justify),
                  ],
                ),
              ),
            ),

            IconButton(
              icon: Icon(Icons.add_shopping_cart_rounded),
              iconSize: 40,
              color: Colors.amber[600],
              onPressed: () => {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => BuyPage(widget.id, widget.name,
                            widget.price, widget.restaurantId)))
              },
            ),
          ],
        ),
      ),
    );
  }
}
