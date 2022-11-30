import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:sgr_application1/widgets/widget_card1.dart';
import 'package:sgr_application1/widgets/widget_card2.dart';
import 'package:sgr_application1/widgets/widget_card3.dart';
import 'package:sgr_application1/widgets/widget_card4.dart';
import 'package:sgr_application1/widgets/widget_drawer.dart';

import 'package:http/http.dart' as http;

import 'detail1.dart';
import 'models/Platillos.dart';

class HomePage extends StatefulWidget {
  static String id = 'home_page';

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
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

      //print(jsonData["data"][0]["photos"]["path"]);

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
        appBar: AppBar(
          backgroundColor: Colors.amber[600],
          title: const Text('La Plazuela'),
        ),
        drawer: MenuLateral(),
        /*body: GridView.count(
            crossAxisSpacing: 5,
            mainAxisSpacing: 10,
            crossAxisCount: 2,
            padding: EdgeInsets.all(10),
            children: <Widget>[
              Container(
                child: Card1(),
              ),
              Container(
                child: Card2(),
              ),
              Container(
                child: Card3(),
              ),
              Container(
                child: Card4(),
              ),
            ]),*/

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
              return Text("error-1");
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

    for (var platillo in data) {
      platillos.add(
          /*Card(
              child: Column(
        children: [Text(platillo.name), Text(platillo.price)],
      ))*/
          Card(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30)),
              margin: EdgeInsets.all(5),
              elevation: 5,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Column(
                  children: <Widget>[
                    FadeInImage(
                      // En esta propiedad colocamos la imagen a descargar
                      //image: AssetImage('assets/salmon.png'),

                      //AÑADIR IMAGEN DESDE LA WEB
                      // image: NetworkImage(platillo.image),
                      // image: Image.network('https://firebasestorage.googleapis.com/v0/b/la-plazuela-eae43.appspot.com/o/dishes%2F634b9e0deff40f56e804d478%2Fgu3si7vigt5.jpeg'),
                      image: NetworkImage(
                        'https://picsum.photos/250?image=9',
                      ),

                      // En esta propiedad colocamos el gif o imagen de carga
                      // debe estar almacenado localmente
                      placeholder: AssetImage('assets/loading.gif'),

                      // En esta propiedad colocamos mediante el objeto BoxFit
                      // la forma de acoplar la imagen en su contenedor
                      fit: BoxFit.cover,

                      // En esta propiedad colocamos el alto de nuestra imagen
                      height: 200,
                    ),
                    ListTile(
                      contentPadding: EdgeInsets.fromLTRB(15, 10, 25, 0),
                      title: Text(platillo.name),
                      subtitle: Text(platillo.price),
                      leading: Icon(Icons.local_grocery_store_sharp),
                    ),

                    // Usamos una fila para ordenar los botones del card
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
                                    builder: (context) =>
                                        Detail1Page(platillo.id)))
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
