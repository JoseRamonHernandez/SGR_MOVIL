import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:sgr_application1/pages/help.dart';
import 'package:sgr_application1/pages/models/Contacto.dart';
import 'package:sgr_application1/pages/services/notification_false.dart';
import 'package:sgr_application1/pages/services/notification_true.dart';

import '../widgets/widget_drawer.dart';
import 'contactDetail.dart';
import 'locate.dart';

import 'package:http/http.dart' as http;

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await initNotificationsTrue();
  await initNotificationsFalse();

  runApp(const Contact());
}

class Contact extends StatelessWidget {
  const Contact({super.key});

  @override
  Widget build(BuildContext context) {
    final _formKey = GlobalKey<FormState>();
    String nameValue = '';
    String emailValue = '';
    String numberValue = '';
    String messageValue = '';
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber[600],
        title: Text('Formulario de Contacto'),
        leading: IconButton(
            onPressed: () => {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => LocatePage()))
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
                  Text(
                    "Ofrecemos nuestros servicios de concina y de meseros, para una cotización llena el siguiente formulario",
                    style: TextStyle(fontSize: 15),
                    textAlign: TextAlign.center,
                  ),
                  TextFormField(
                    decoration:
                        new InputDecoration(hintText: "Nombre Completo"),
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
                    decoration:
                        new InputDecoration(hintText: "Correo Electrónio"),
                    keyboardType: TextInputType.emailAddress,
                    onSaved: (value) {
                      emailValue = value!;
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
                    decoration: new InputDecoration(hintText: "Mensaje"),
                    keyboardType: TextInputType.text,
                    onSaved: (value) {
                      messageValue = value!;
                    },
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Por favor ingrese un dato correcto (min 10)';
                      }
                    },
                  ),
                  Padding(padding: EdgeInsets.symmetric(vertical: 16)),
                  ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.amber[600]),
                      onPressed: () {
                        if (_formKey.currentState!.validate()) {
                          _formKey.currentState!.save();
                          notificacion(context, nameValue, emailValue,
                              numberValue, messageValue);
                          /*Navigator.push(
                              context,
                              notificacion(nameValue, emailValue, numberValue,
                                  messageValue)
                              MaterialPageRoute(
                                  builder: (context) => PageContactDetail(
                                        nameValue,
                                        emailValue,
                                        numberValue,
                                        messageValue,
                                      ))
                              );*/
                        }
                      },
                      child: Text('Enviar')),
                  /* ElevatedButton(
                      onPressed: () {
                        showNotificacionTrue();
                        print("Notificación Lanzada");
                      },
                      child: Text('Lanzar notificación')),*/
                ],
              ),
            ),
          ),
        ),
      ),
    ));
  }
}

notificacion(BuildContext context, name, email, phone, message) async {
  //late Future<List<Contacto>> _listadoContacto;

  var httpsUri = Uri(
      scheme: 'https',
      host: 'piedra-mongo-back-production.up.railway.app',
      path: '/api/contact/create/');

  print(name);
  print(email);
  print(phone);
  print(message);

  // /*Future<List<Contacto>>*/ _getContacto() async {

  final response = await http.post(httpsUri, body: {
    "name": name,
    "email": email,
    "phone": phone,
    "message": message,
  });

  // List<Contacto> platillos = [];
  if (response.statusCode == 200 || response.statusCode == 201) {
    showNotificacionTrue();
    print("Registro exitoso");
    showAlertDialog(context);
  } else {
    //throw Exception("Falló la conexión");
    showNotificacionFalse();
    print("Algo falló");
  }
  //}
}

showAlertDialog(BuildContext context) {
  // Create button
  Widget okButton = ElevatedButton(
    child: Text("OK"),
    onPressed: () => {
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => LocatePage()))
    },
  );

  // Create AlertDialog
  AlertDialog alert = AlertDialog(
    title: Text("Notificación"),
    content: Text(
        "Gracias por tu mensaje, muy pronto estaremos en contacto contigo."),
    actions: [
      okButton,
    ],
  );

  // show the dialog
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return alert;
    },
  );
}
