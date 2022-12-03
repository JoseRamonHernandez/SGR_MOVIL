import 'package:flutter/material.dart';

import '../widgets/widget_drawer.dart';

void main() => runApp(const Contact());

class Contact extends StatelessWidget {
  const Contact({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.amber[600],
          title: Text('Contáctanos', style: TextStyle(color: Colors.white)),
        ),
        drawer: MenuLateral(),
        body: const Center(
          child: Text('Formulario de contácto'),
        ),
      ),
    );
  }
}
