import 'package:flutter/material.dart';
import 'package:sgr_application1/widgets/widget_drawer.dart';

class ProductPage extends StatefulWidget {
  static String id = 'product_page';

  @override
  State<ProductPage> createState() => _ProductPageState();
}

class _ProductPageState extends State<ProductPage> {
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
          crossAxisCount: 1,
          crossAxisSpacing: 5,
          mainAxisSpacing: 10,
          padding: EdgeInsets.all(10),
          children: [
            Container(color: Colors.red),
            Container(color: Colors.green),
            Container(color: Colors.black),
          ],
        ),
      ),
    );
  }
}
