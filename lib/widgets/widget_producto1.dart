import 'package:flutter/material.dart';

class Product1 extends StatelessWidget {
  const Product1({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
        margin: EdgeInsets.all(5),
        elevation: 10,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(20),
          child: Column(
            children: [
              ListTile(
                title: Text('Holaaaaaaaa Mundoooooo'),
              )
            ],
          ),
        ));
  }
}
