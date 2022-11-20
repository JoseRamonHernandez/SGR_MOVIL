import 'package:flutter/material.dart';
import 'package:sgr_application1/widgets/widget_drawer.dart';

class BuyPage extends StatefulWidget {
  static String id = 'buy_page';

  @override
  State<BuyPage> createState() => _BuyPageState();
}

class _BuyPageState extends State<BuyPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
            title: const Text('Carta'),
            automaticallyImplyLeading: false,
            backgroundColor: Colors.amberAccent[600]),
        drawer: MenuLateral(),
        body: Container(),
      ),
    );
  }
}
