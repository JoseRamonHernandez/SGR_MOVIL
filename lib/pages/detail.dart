/*
import 'package:flutter/material.dart';

import 'WidgetArguments.dart';

class detail extends StatelessWidget
{

  @override
  Widget build(BuildContext context)
  {
    final Object arguments= ModalRoute.of(context).settings.arguments;
    return Scaffold(
      body: Center(
        child: Text(arguments.nombre)
      ),
    )
  }
}*/

import 'package:flutter/material.dart';

import 'buy.dart';

class Detail extends StatelessWidget {
  const Detail({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
          title: Text("Descripción del platillo",
              style: TextStyle(color: Colors.white)),
          backgroundColor: Colors.blue),
      // bottomNavigationBar: BNavigator(),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: ListView(
          children: <Widget>[
            Text("* Chilaquiles Verdes",
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold)),
            Image.asset('assets/chilaquiles-verdes.png'),
            // Text("\n"),
            Text(
              "PRECIO DEL PLATILLO: 50 pesos \n",
              style: TextStyle(fontSize: 20),
            ),
            Text(
                "Platillo tradicional de tortilla con forma de triangulo freida en aceite y bañada de salsa verde, con queso, crema y pollo encima. ",
                style: TextStyle(fontSize: 20.0),
                textAlign: TextAlign.justify),
            IconButton(
              icon: Icon(Icons.add_shopping_cart_rounded),
              iconSize: 40,
              color: Colors.greenAccent[700],
              onPressed: () => {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => Buy()))
              },
            ),
          ],
        ),
      ),
    );
  }
}
