import 'package:flutter/material.dart';
import 'package:sgr_application1/widgets/widget_card1.dart';
import 'package:sgr_application1/widgets/widget_card2.dart';
import 'package:sgr_application1/widgets/widget_card3.dart';
import 'package:sgr_application1/widgets/widget_card4.dart';
import 'package:sgr_application1/widgets/widget_drawer.dart';

class HomePage extends StatefulWidget {
  static String id = 'home_page';

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.amber[600],
          title: const Text('La Plazuela'),
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
            ]),
      ),
    );
  }
}
