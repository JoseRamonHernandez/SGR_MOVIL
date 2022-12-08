import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:sgr_application1/widgets/widget_drawer.dart';

import 'package:http/http.dart' as http;

import 'detail1.dart';
import 'models/PlatilloDetail.dart';

import 'package:intl/intl.dart';

class IndexPage extends StatefulWidget {
  //static String id = 'index_page';
  final String restaurantId;
  final String restaurantName;

  IndexPage(this.restaurantId, this.restaurantName, {super.key});

  @override
  _IndexPageState createState() => _IndexPageState();
}

class _IndexPageState extends State<IndexPage> {
  late Future<List<PlatillosDetail>> _listadoPlatillos;

// https://piedra-mongo-back-production.up.railway.app/api/restaurants/get-all

  var httpsUri = Uri(
      scheme: 'https',
      host: 'piedra-mongo-back-production.up.railway.app',
      path: '/api/dishes/get-all');

  Future<List<PlatillosDetail>> _getPlatillos() async {
    final response = await http.get(httpsUri);

    List<PlatillosDetail> platillos = [];

    if (response.statusCode == 200) {
      //print(response.body);
      String body = utf8.decode(response.bodyBytes);

      final jsonData = jsonDecode(body);

      //print(jsonData["data"][0]["photos"]["path"]);
      //print(jsonData["data"][0]["restaurantID"]);
      for (var item in jsonData["data"]) {
        if (item["restaurantID"] == widget.restaurantId) {
          platillos.add(PlatillosDetail(item["name"], item["price"],
              item["_id"], item["photos"][0]["path"], item["description"]));
        } else {
          throw Exception("Sin registros");
        }
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
        appBar: AppBar(
          backgroundColor: Colors.amber[600],
          title: Text(widget.restaurantName),
        ),
        drawer: MenuLateral(),
        body: FutureBuilder(
          future: _listadoPlatillos,
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              // print(snapshot.data);
              return GridView.count(
                crossAxisSpacing: 5,
                mainAxisSpacing: 10,
                crossAxisCount: 2,
                padding: EdgeInsets.all(10),
                children: _listPlatillos(snapshot.data),
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

  List<Widget> _listPlatillos(data) {
    List<Widget> platillos = [];
    final numberFormat = NumberFormat.currency(locale: 'es_MX', symbol: "\$");

    for (var platillo in data) {
      int price = int.parse(platillo.price);
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
                  image: NetworkImage(platillo.img),
                  placeholder: AssetImage('assets/loading.gif'),
                  fit: BoxFit.cover,
                  height: 200,
                ),
                ListTile(
                  contentPadding: EdgeInsets.fromLTRB(15, 10, 25, 0),
                  title: Text(platillo.name),
                  subtitle: Text(numberFormat.format(price)),
                  leading: Icon(Icons.local_grocery_store_sharp),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.amber[600]),
                      onPressed: () => {
                        print(platillo.id),
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Detail1Page(
                                      platillo.id,
                                      platillo.name,
                                      platillo.description,
                                      platillo.price,
                                      platillo.img,
                                      widget.restaurantId,
                                    )))
                      },
                      child: Text('Ordenar',
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
