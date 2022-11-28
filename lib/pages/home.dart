import 'package:flutter/material.dart';
import 'package:sgr_application1/widgets/widget_card1.dart';
import 'package:sgr_application1/widgets/widget_card2.dart';
import 'package:sgr_application1/widgets/widget_card3.dart';
import 'package:sgr_application1/widgets/widget_card4.dart';
import 'package:sgr_application1/widgets/widget_drawer.dart';

import 'package:http/http.dart' as http;

class HomePage extends StatefulWidget {
  static String id = 'home_page';

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  //late Future<List<Elementos>> _listadoElementos;

  /*Future<List<Elementos>>*/ _getElementos() async {
    final response = await http.get(
        Uri.http("https://piedra-back.herokuapp.com", "/api/dishes/get-all"));

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
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.amber[600],
          title: const Text('Menú'),
        ),
        drawer: MenuLateral(),
        body: GridView.count(
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
          ],
        ),
      ),
    );
  }
}
