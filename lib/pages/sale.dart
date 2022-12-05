import 'package:flutter/material.dart';

class PageSale extends StatefulWidget {
  final String nombre;
  final String direccion;
  final String telefono;
  final String cantidad;
  final String horario;
  final String comentario;
  final String id;
  final String name;
  final String price;
  PageSale(this.nombre, this.direccion, this.telefono, this.cantidad,
      this.horario, this.comentario, this.id, this.name, this.price,
      {super.key});

  @override
  _PageSaleState createState() => _PageSaleState();
}

class _PageSaleState extends State<PageSale> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Text(widget.id),
            Text(widget.name),
            Text(widget.price),
            Text(widget.nombre),
            Text(widget.direccion),
            Text(widget.telefono),
            Text(widget.cantidad),
            Text(widget.horario),
            Text(widget.comentario),
          ],
        ),
      ),
    );
  }
}
