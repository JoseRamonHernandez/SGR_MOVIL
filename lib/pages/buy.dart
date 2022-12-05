import 'package:flutter/material.dart';
import 'package:sgr_application1/pages/home.dart';
import 'package:sgr_application1/pages/sale.dart';

class BuyPage extends StatefulWidget {
  // static String id = 'buy_page';
  final String id;
  final String nombre;
  final String precio;
  BuyPage(this.id, this.nombre, this.precio, {super.key});

  @override
  _BuyPageState createState() => _BuyPageState();
}

class _BuyPageState extends State<BuyPage> {
  // Key that uniquely identifies the Form
  final _formKey = GlobalKey<FormState>();

  String nameValue = '';
  String direccionValue = '';
  String numberValue = '';
  String countValue = '';
  String dateValue = '';
  String menssageValue = '';
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber[600],
        title: Text('Formulario de compra'),
        leading: IconButton(
            onPressed: () => {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => HomePage()))
                },
            icon: Icon(Icons.arrow_back),
            color: Colors.white),
      ),
      body: Form(
        key: _formKey,
        child: SingleChildScrollView(
          child: Card(
            elevation: 16.0,
            shadowColor: Colors.amber[600],
            margin: EdgeInsets.all(16),
            child: Padding(
              padding: EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  TextFormField(
                    decoration: new InputDecoration(hintText: "Nombre"),
                    keyboardType: TextInputType.name,
                    onSaved: (value) {
                      nameValue = value!;
                    },
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Por favor ingrese un dato correcto (min 10)';
                      }
                    },
                  ),
                  TextFormField(
                    decoration: new InputDecoration(
                        hintText: "Dirección o nombre de la Empresa"),
                    keyboardType: TextInputType.text,
                    onSaved: (value) {
                      direccionValue = value!;
                    },
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Por favor ingrese un dato correcto (min 10)';
                      }
                    },
                  ),
                  TextFormField(
                    decoration:
                        new InputDecoration(hintText: "Numero de celular"),
                    keyboardType: TextInputType.phone,
                    onSaved: (value) {
                      numberValue = value!;
                    },
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Por favor ingrese un dato correcto (min 10)';
                      }
                    },
                  ),
                  TextFormField(
                    decoration:
                        new InputDecoration(hintText: "Cantidad de platillos"),
                    keyboardType: TextInputType.number,
                    onSaved: (value) {
                      countValue = value!;
                    },
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Por favor ingrese un dato correcto (min 1)';
                      }
                    },
                  ),
                  TextFormField(
                    decoration: new InputDecoration(
                        hintText:
                            "Hora de entrega (Aplica solo si es pedido de Empresa, si no aplica haga caso omiso)"),
                    keyboardType: TextInputType.text,
                    onSaved: (value) {
                      dateValue = value!;
                    },
                  ),
                  TextFormField(
                    decoration: new InputDecoration(hintText: "**Comentarios"),
                    keyboardType: TextInputType.text,
                    onSaved: (value) {
                      menssageValue = value!;
                    },
                  ),
                  Padding(padding: EdgeInsets.symmetric(vertical: 16)),
                  ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.amber[600]),
                      onPressed: () {
                        if (_formKey.currentState!.validate()) {
                          _formKey.currentState!.save();
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => PageSale(
                                      nameValue,
                                      direccionValue,
                                      numberValue,
                                      countValue,
                                      dateValue,
                                      menssageValue,
                                      widget.id,
                                      widget.nombre,
                                      widget.precio)));
                        }
                      },
                      child: Text('Comprar')),
                ],
              ),
            ),
          ),
        ),
      ),
    ));
  }
}
