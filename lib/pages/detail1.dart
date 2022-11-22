import 'package:flutter/material.dart';
import 'package:sgr_application1/pages/buy.dart';
import 'package:sgr_application1/pages/home.dart';

class Detail1Page extends StatelessWidget {
  // const Detail1Page({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.amber[600],
          title: Text('Descripción del platillo'),
          leading: IconButton(
              onPressed: () => {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => HomePage()))
                  },
              icon: Icon(Icons.arrow_back),
              color: Colors.white),
        ),
        // bottomNavigationBar: BNavigator(),
        body: ListView(
          children: <Widget>[
            Text('Salmón a la plancha con verduras',
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold)),
            Image.asset('assets/salmon.png'),
            // Text("\n"),
            Text("PRECIO DEL PLATILLO: 700 pesos \n"),
            Text(
                "Las espinacas, repollo (col) y la variedad de verduras que puede llevar crean la base más rica. Un platillo excepcional para la familia.",
                style: TextStyle(fontSize: 10.0),
                textAlign: TextAlign.justify),
            IconButton(
              icon: Icon(Icons.add_shopping_cart_rounded),
              iconSize: 40,
              color: Colors.amber[600],
              onPressed: () => {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => BuyPage()))
              },
            ),
          ],
        ),
      ),
    );
  }
}
