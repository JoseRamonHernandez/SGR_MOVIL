import 'dart:html';

import 'package:flutter/material.dart';
import 'package:sgr_application1/pages/home.dart';
import 'package:sgr_application1/pages/home_route.dart';

import 'detail.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "SGR",
      home: HomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
            title: Text("PLATILLOS DISPONIBLES"),
            automaticallyImplyLeading: false,
            backgroundColor: Colors.deepPurpleAccent),
        body: ListView(
          children: <Widget>[
            miCardImageCarga3(),
            miCardImageCarga2(),
            miCardImageCarga1(),
            miCardImageCarga4(),
          ],
        ));
  }

  Card miCardImageCarga1() {
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
                image: AssetImage('assets/salmon.png'),

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
                title: Text('Salmon a la plancha con verduras'),
                subtitle: Text('PRECIO: 700 pesos'),
                leading: Icon(Icons.local_grocery_store_sharp),
              ),

              // Usamos una fila para ordenar los botones del card
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  FlatButton(
                    onPressed: () => {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Detail()))
                    },
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

  Card miCardImageCarga2() {
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
                image: AssetImage('assets/mole.png'),

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
                title: Text('Mole poblano'),
                subtitle: Text('PRECIO: 85 pesos '),
                leading: Icon(Icons.local_grocery_store_sharp),
              ),

              // Usamos una fila para ordenar los botones del card
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  FlatButton(
                    onPressed: () => {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Detail()))
                    },
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

  Card miCardImageCarga3() {
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
                image: AssetImage('assets/chilaquiles-verdes.png'),

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
                title: Text('Chilaquiles Verdes'),
                subtitle: Text('PRECIO: 50 pesos '),
                leading: Icon(Icons.local_grocery_store_sharp),
              ),

              // Usamos una fila para ordenar los botones del card
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  FlatButton(
                    onPressed: () => {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Detail()))
                    },
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

  Card miCardImageCarga4() {
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
                image: AssetImage('assets/pozole.png'),

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
                title: Text('Pozole rojo'),
                subtitle: Text('PRECIO: 60 pesos'),
                leading: Icon(Icons.local_grocery_store_sharp),
              ),

              // Usamos una fila para ordenar los botones del card
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  FlatButton(
                    onPressed: () => {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Detail()))
                    },
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

  Widget _buildGrid() => GridView.extent(
      maxCrossAxisExtent: 150,
      padding: const EdgeInsets.all(4),
      mainAxisSpacing: 4,
      crossAxisSpacing: 4,
      children: _buildGridTileList(30));

// Las imágenes estan guardadas con nombres pic0.jpg, pic1.jpg...pic29.jpg.
// El constructor List.generate() permite una forma sencilla de crear
// una lista cuando los objetos tienen un patrón de nombre predecible.
  List<Container> _buildGridTileList(int count) => List.generate(
      count, (i) => Container(child: Image.asset('assets/pic$i.jpg')));
}
