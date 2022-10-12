import 'dart:js';

import 'package:flutter/material.dart';
import 'package:sgr_application1/BNavigation/bottom_nav.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: Text("PLATILLOS DISPONIBLES"),
            automaticallyImplyLeading: false,
            backgroundColor: Colors.deepPurpleAccent),
        //  bottomNavigationBar: BNavigator(),
        body: ListView(
          children: <Widget>[
            miCardImageCarga(),
            miCardImageCarga(),
            miCardImageCarga(),
            miCardImageCarga(),
            miCardImageCarga(),
          ],
        ));
  }

  Card miCardImageCarga() {
    return Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
        margin: EdgeInsets.all(15),
        elevation: 10,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(20),
          child: Column(
            children: <Widget>[
              FadeInImage(
                // En esta propiedad colocamos la imagen a descargar
                image: AssetImage('assets/image1.png'),

                //AÑADIR IMAGEN DESDE LA WEB
                /* image: NetworkImage(
                    'https://staticuestudio.blob.core.windows.net/buhomag/2016/03/01195417/pexels-com.jpg'),
                */

                // En esta propiedad colocamos el gif o imagen de carga
                // debe estar almacenado localmente
                placeholder: AssetImage('assets/loading.gif'),

                // En esta propiedad colocamos mediante el objeto BoxFit
                // la forma de acoplar la imagen en su contenedor
                fit: BoxFit.cover,

                // En esta propiedad colocamos el alto de nuestra imagen
                height: 260,
              ),
              ListTile(
                contentPadding: EdgeInsets.fromLTRB(15, 10, 25, 0),
                title: Text('Nombre del platillo'),
                subtitle: Text('PRECIO: '),
                leading: Icon(Icons.local_grocery_store_sharp),
              ),

              // Usamos una fila para ordenar los botones del card
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  FlatButton(
                    onPressed: () => {},
                    child: Text('Comprar',
                        style: TextStyle(
                            fontSize: 15.0,
                            fontWeight: FontWeight.bold,
                            color: Colors.green.shade900)),
                  ),
                ],
              )
            ],
          ),
        ));
  }
}
