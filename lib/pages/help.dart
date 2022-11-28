import 'package:flutter/material.dart';
import 'package:sgr_application1/widgets/widget_drawer.dart';

class HelpPage extends StatefulWidget {
  static String id = 'help_page';

  @override
  State<HelpPage> createState() => _HelpPageState();
}

class _HelpPageState extends State<HelpPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.amber[600],
          title: const Text('Ayuda'),
        ),
        drawer: MenuLateral(),
        // bottomNavigationBar: BNavigator(),
        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: ListView(children: <Widget>[
              IconButton(
                icon: Icon(Icons.ad_units),
                iconSize: 60,
                color: Colors.tealAccent[700],
                onPressed: null,
              ),
              Text("Aplicación móvil para levantamiento de pedido"),
            ]),
          ),
        ),
      ),
    );
  }
}
