import 'package:flutter/material.dart';
import 'package:sgr_application1/pages/home.dart';

import '../widgets/widget_drawer.dart';
import 'contact.dart';

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
        appBar: AppBar(
          backgroundColor: Colors.amber[600],
          title: const Text('La Plazuela - Información'),
        ),
        drawer: MenuLateral(),

        //  bottomNavigationBar: BNavigator(),
        body: ListView(children: <Widget>[
          Text(
            "\n Restaurante LA PLAZUELA te invita a conocer y probar nuestra variedad de Platillos \n",
            style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.normal),
            textAlign: TextAlign.center,
          ),
          telefono(),
          horarios(),
          direccion(),
          redes(),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: const <Widget>[
              Icon(
                Icons.facebook_rounded,
                color: Color.fromARGB(255, 20, 74, 167),
                size: 36.0,
              ),
              Icon(
                Icons.whatsapp_rounded,
                color: Color.fromARGB(255, 38, 196, 17),
                size: 36.0,
              ),
              Icon(
                Icons.tiktok_rounded,
                color: Color.fromARGB(255, 3, 3, 3),
                size: 36.0,
              ),
            ],
          ),
          cotizacion(),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
                child: TextButton.icon(
                    onPressed: () => {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Contact()))
                        },
                    icon: Icon(
                      Icons.check,
                      size: 30.0,
                    ),
                    label: Text("Cotización"))),
          ),
          //Text("COLOCAR IMAGENES DEL RESTAURANTE")
        ]),
      ),
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
                  title: Text('Nuestro número de teléfono: '),
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
                  title: Text('Nuestros Horarios:'),
                  subtitle: Text(
                      'Lunes - Viernes 9:00 hrs a 19:00 hrs y Sábados - Domingos 9:00 hrs a 18:00 hrs'),
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
                  title: Text('Visitanos en: '),
                  subtitle:
                      Text('Hidalgo Pte 404, Centro, Huamantla, Tlax., Mexico'),
                  leading: Icon(Icons.location_on_sharp)),

              // Usamos una fila para ordenar los botones del card
            ],
          ),
        ));
  }

  Card redes() {
    return Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
        margin: EdgeInsets.all(15),
        elevation: 10,
        color: Colors.blueGrey[50],
        child: ClipRRect(
          borderRadius: BorderRadius.circular(20),
          child: Container(
              child: Center(
                  child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              "Encuentranos en nuestras redes sociales y más:",
              style: TextStyle(
                fontSize: 15,
              ),
            ),
          ))),
        ));
  }

  Card cotizacion() {
    return Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
        margin: EdgeInsets.all(15),
        elevation: 10,
        color: Colors.blueGrey[50],
        child: ClipRRect(
          borderRadius: BorderRadius.circular(20),
          child: Container(
              child: Center(
                  child: Text(
            "\n Para realizar una cotización para un evento presiona el siguiente botón\n",
            style: TextStyle(
              fontSize: 15,
            ),
          ))),
        ));
  }
}
