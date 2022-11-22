import 'package:flutter/material.dart';
import 'package:sgr_application1/pages/buy.dart';
import 'package:sgr_application1/pages/home.dart';

class Detail2Page extends StatelessWidget {
  //const Detail2Page({super.key});

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
            Text("Mole poblano",
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold)),
            Image.asset('assets/mole.png'),
            // Text("\n"),
            Text("PRECIO DEL PLATILLO: 85 pesos \n"),
            Text(
                "Platillo culinario de  la ciudad de Puebla. Consiste principalmente en una mezclas de diferentes chiles secos, especias, chocolate y caldo de pollo.",
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
