/*import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:sgr_application1/models/elementos.dart';

class ElementApp extends StatefulWidget {
  @override
  _ElementAppState createState() => _ElementAppState();
}

class _ElementAppState extends State<ElementApp> {
/*
  Future<List<Elementos>> _listadoElementos;

  Future<List<Elementos>> _getElementos() async {
    final response = await http.get("http://127.0.0.1:8000/api/categoria");

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

*/
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Ejemplo API',
        home: Scaffold(
          appBar: AppBar(title: Text('REST API ELEMENTOS')),
          body: Center(
            child: Container(
              child: Text('Consumo de REST API con LARAVEL en FLUTTER'),
            ),
          ),
        ));
  }
}
*/