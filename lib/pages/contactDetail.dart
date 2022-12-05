import 'package:flutter/material.dart';

class PageContactDetail extends StatefulWidget {
  final String nombre;
  final String correo;
  final String telefono;
  final String mensaje;
  PageContactDetail(this.nombre, this.correo, this.telefono, this.mensaje,
      {super.key});

  @override
  _PageContactDetailState createState() => _PageContactDetailState();
}

class _PageContactDetailState extends State<PageContactDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Text(widget.nombre),
            Text(widget.correo),
            Text(widget.telefono),
            Text(widget.mensaje),
          ],
        ),
      ),
    );
  }
}
