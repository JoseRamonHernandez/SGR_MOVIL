import 'dart:convert';
import 'dart:html';

import 'package:flutter/material.dart';
import 'package:sgr_application1/pages/index.dart';
import 'package:sgr_application1/widgets/widget_drawer.dart';

import 'package:http/http.dart' as http;

import 'detail1.dart';
import 'models/PlatilloDetail.dart';

import 'package:intl/intl.dart';

import 'models/Restaurants.dart';

class HomePage extends StatefulWidget {
  static String id = 'home_page';

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late Future<List<RestaurantsDetail>> _listadoRestaurants;

// https://piedra-mongo-back-production.up.railway.app/api/restaurants/get-all

  var httpsUri = Uri(
      scheme: 'https',
      host: 'piedra-mongo-back-production.up.railway.app',
      path: '/api/restaurants/get-all');

  Future<List<RestaurantsDetail>> _getRestaurants() async {
    final response = await http.get(httpsUri);

    List<RestaurantsDetail> restaurantes = [];

    if (response.statusCode == 200) {
      //print(response.body);
      String body = utf8.decode(response.bodyBytes);

      final jsonData = jsonDecode(body);

      /*
      print(jsonData["data"][0]["_id"]);
      print(jsonData["data"][0]["name"]);
      print(jsonData["data"][0]["coverPhoto"]["path"]);
      */

      for (var item in jsonData["data"]) {
        restaurantes.add(RestaurantsDetail(
            item["name"], item["_id"], item["coverPhoto"]["path"]));
        //print(platillos);
      }

      return restaurantes;
    } else {
      throw Exception("Falló la conexión");
    }
  }

  @override
  void initState() {
    super.initState();
    _listadoRestaurants = _getRestaurants();
    //  _getListado();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.amber[600],
          title: Center(
            child: const Text(
              'SGR - Listado de Restaurantes (Escoge uno)',
              style: TextStyle(fontSize: 20),
              textAlign: TextAlign.start,
            ),
          ),
        ),
        body: FutureBuilder(
          future: _listadoRestaurants,
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              // print(snapshot.data);
              return Container(
                child: GridView.count(
                  crossAxisSpacing: 5,
                  mainAxisSpacing: 10,
                  crossAxisCount: 2,
                  padding: EdgeInsets.all(10),
                  children: _listRestaurants(snapshot.data),
                ),
              );
            } else if (snapshot.hasError) {
              print(snapshot.error);
              return Padding(
                padding: const EdgeInsets.all(15.0),
                child: Center(
                  child: Column(
                    children: [
                      Text("Nos encontramos en soporte, intentalo más tarde."),
                      Image.network(
                        "https://upacesanfernando.org/wp-content/uploads/2015/03/DISCULPE.gif",
                        width: 300,
                        height: 400,
                        fit: BoxFit.contain,
                      ),
                    ],
                  ),
                ),
              );
            }

            return Center(
              child: CircularProgressIndicator(),
            );
          },
        ),
      ),
    );
  }

  List<Widget> _listRestaurants(data) {
    List<Widget> platillos = [];
    final numberFormat = NumberFormat.currency(locale: 'es_MX', symbol: "\$");

    for (var restaurante in data) {
      //int price = int.parse(platillo.price);
      platillos.add(Card(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
          margin: EdgeInsets.all(5),
          elevation: 5,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: Column(
              children: <Widget>[
                FadeInImage(
                  image: NetworkImage(restaurante.img),
                  placeholder: AssetImage('assets/loading.gif'),
                  fit: BoxFit.cover,
                  height: 200,
                ),
                ListTile(
                  contentPadding: EdgeInsets.fromLTRB(15, 10, 25, 0),
                  title: Text(restaurante.name),
                  leading: Icon(Icons.local_restaurant_rounded),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.amber[600]),
                      onPressed: () => {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => IndexPage(
                                      restaurante.id,
                                      restaurante.name,
                                    )))
                      },
                      child: Text('Visitar',
                          style: TextStyle(
                              fontSize: 10.0,
                              fontWeight: FontWeight.bold,
                              color: Colors.white)),
                    ),
                  ],
                )
              ],
            ),
          )));
    }

    return platillos;
  }
}
