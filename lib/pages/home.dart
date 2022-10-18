import 'dart:html';

import 'package:flutter/material.dart';
import 'package:sgr_application1/main.dart';
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
      //backgroundColor: Colors.blue[700],
      body: CustomScrollView(
        slivers: <Widget>[
          _crearAppBAr(),
          SliverList(
            delegate: SliverChildListDelegate([
              SizedBox(
                height: 10.0,
              ),
              miCardImageCarga3(),
              miCardImageCarga2(),
              miCardImageCarga1(),
              miCardImageCarga4(),
            ]),
          ),
        ],
      ),
    );
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
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: CircleAvatar(
                  backgroundColor: Colors.orange,
                  radius: 130,
                  child: CircleAvatar(
                    backgroundImage: AssetImage("assets/salmon.png"),
                    radius: 120,
                  ),
                  //CircleAvatar
                ),
              ),
              ListTile(
                contentPadding: EdgeInsets.fromLTRB(15, 10, 25, 0),
                title: Text('Salmon a la plancha con verduras'),
                subtitle: Text('PRECIO: 700 pesos'),
                leading: IconButton(
                  icon: Icon(Icons.local_grocery_store_sharp),
                  iconSize: 40,
                  color: Colors.green,
                  onPressed: null,
                ),
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
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: CircleAvatar(
                  backgroundColor: Colors.orange,
                  radius: 130,
                  child: CircleAvatar(
                    backgroundImage: AssetImage("assets/mole.png"),
                    radius: 120,
                  ),
                  //CircleAvatar
                ),
              ),
              ListTile(
                contentPadding: EdgeInsets.fromLTRB(15, 10, 25, 0),
                title: Text('Mole poblano'),
                subtitle: Text('PRECIO: 85 pesos '),
                leading: IconButton(
                  icon: Icon(Icons.local_grocery_store_sharp),
                  iconSize: 40,
                  color: Colors.green,
                  onPressed: null,
                ),
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
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: CircleAvatar(
                  backgroundColor: Colors.orange,
                  radius: 130,
                  child: CircleAvatar(
                    backgroundImage:
                        AssetImage("assets/chilaquiles-verdes.png"),
                    radius: 120,
                  ),
                  //CircleAvatar
                ),
              ),
              ListTile(
                contentPadding: EdgeInsets.fromLTRB(15, 10, 25, 0),
                title: Text('Chilaquiles Verdes'),
                subtitle: Text('PRECIO: 50 pesos '),
                /*leading: IconButton(
                  icon: Icon(Icons.local_grocery_store_sharp),
                  iconSize: 40,
                  color: Colors.green,
                  onPressed: null,
                ),*/
              ),

              // Usamos una fila para ordenar los botones del card
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  new FlatButton.icon(
                    icon: const Icon(Icons.local_grocery_store_sharp,
                        size: 20.0, color: Colors.greenAccent),
                    label: const Text('Comprar',
                        style: TextStyle(
                            fontSize: 20.0, color: Colors.greenAccent)),
                    onPressed: () => {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Detail()))
                    },
                  )
                ],
              )
            ],
          ),
        ));
  }

  Card miCardImageCarga4() {
    return Card(
        color: Colors.white,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
        margin: EdgeInsets.all(15),
        elevation: 10,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(20),
          child: Column(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: CircleAvatar(
                  backgroundColor: Colors.orange,
                  radius: 130,
                  child: CircleAvatar(
                    backgroundImage: AssetImage("assets/pozole.png"),
                    radius: 120,
                  ), //CircleAvatar
                ),
              ),
              ListTile(
                contentPadding: EdgeInsets.fromLTRB(15, 10, 25, 0),
                title: Text('Pozole rojo'),
                subtitle: Text('PRECIO: 60 pesos'),
                leading: IconButton(
                  icon: Icon(Icons.local_grocery_store_sharp),
                  iconSize: 40,
                  color: Colors.green,
                  onPressed: null,
                ),
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
}

Widget _crearAppBAr() {
  return SliverAppBar(
    backgroundColor: Colors.black,
    floating: true,
    pinned: true,
    centerTitle: false,
    title: Text("CARTA",
        style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold)),
    expandedHeight: 200,
    flexibleSpace: Image.asset(
      'assets/plazuela.jpeg',
      fit: BoxFit.cover,
    ),
  );
}
