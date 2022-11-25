import 'package:flutter/material.dart';
import 'package:sgr_application1/pages/home.dart';

class LocatePage extends StatefulWidget {
  static String id = 'locate_page';

  @override
  State<LocatePage> createState() => _LocatePageState();
}

class _LocatePageState extends State<LocatePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          backgroundColor: Colors.orangeAccent[800],
          appBar: AppBar(
            backgroundColor: Colors.amber[600],
            title: Text("LA PLAZUELA - Información",
                style: TextStyle(color: Colors.white)),
            leading: IconButton(
                onPressed: () => {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => HomePage()))
                    },
                icon: Icon(Icons.arrow_back),
                color: Colors.white),
          ),
          //  bottomNavigationBar: BNavigator(),
          body: ListView(children: <Widget>[
            Text(
              "\n Restaurante LA PLAZUELA te invita a conocer personalmente en nuestro negocio..................\n",
              style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.normal),
              textAlign: TextAlign.center,
            ),
            telefono(),
            horarios(),
            direccion(),
            Text("\n Más sobre nosotros: \n"),
            Text("COLOCAR IMAGENES DEL RESTAURANTE")
          ])),
    );
  }

  Card telefono() {
    return Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
        margin: EdgeInsets.all(15),
        elevation: 10,
        color: Colors.blueGrey[50],
        child: ClipRRect(
          borderRadius: BorderRadius.circular(20),
          child: Column(
            children: <Widget>[
              ListTile(
                  contentPadding: EdgeInsets.fromLTRB(15, 10, 25, 0),
                  title: Text('Numero telefonico: '),
                  subtitle: Text('+52 247 472 0964'),
                  leading: Icon(Icons.call)),

              // Usamos una fila para ordenar los botones del card
            ],
          ),
        ));
  }

  Card horarios() {
    return Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
        margin: EdgeInsets.all(15),
        elevation: 10,
        color: Colors.blueGrey[50],
        child: ClipRRect(
          borderRadius: BorderRadius.circular(20),
          child: Column(
            children: <Widget>[
              ListTile(
                  contentPadding: EdgeInsets.fromLTRB(15, 10, 25, 0),
                  title: Text('Horarios:'),
                  subtitle: Text(
                      'Lunes - Viernes 9:00 a 19:00 y Sábados - Domingos 9:00 a 18:00 '),
                  leading: Icon(Icons.calendar_today_rounded)),

              // Usamos una fila para ordenar los botones del card
            ],
          ),
        ));
  }

  Card direccion() {
    return Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
        margin: EdgeInsets.all(15),
        elevation: 10,
        color: Colors.blueGrey[50],
        child: ClipRRect(
          borderRadius: BorderRadius.circular(20),
          child: Column(
            children: <Widget>[
              FadeInImage(
                // En esta propiedad colocamos la imagen a descargar
                image: AssetImage('assets/ubicacion.png'),

                // En esta propiedad colocamos el gif o imagen de carga
                // debe estar almacenado localmente
                placeholder: AssetImage('assets/loading.gif'),

                // En esta propiedad colocamos mediante el objeto BoxFit
                // la forma de acoplar la imagen en su contenedor
                fit: BoxFit.cover,

                // En esta propiedad colocamos el alto de nuestra imagen
                height: 280,
              ),
              ListTile(
                  contentPadding: EdgeInsets.fromLTRB(15, 10, 25, 0),
                  title: Text('Ubicanos en: '),
                  subtitle:
                      Text('Hidalgo Pte 404, Centro, Huamantla, Tlax., Mexico'),
                  leading: Icon(Icons.location_on_sharp)),

              // Usamos una fila para ordenar los botones del card
            ],
          ),
        ));
  }
}
