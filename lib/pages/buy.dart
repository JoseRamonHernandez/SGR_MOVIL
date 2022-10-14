import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:io';

import 'package:sgr_application1/pages/home.dart';

class Buy extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.deepOrange,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Formulario de compra'),
          leading: IconButton(
              onPressed: () => {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Home()))
                  },
              icon: Icon(Icons.arrow_back),
              color: Colors.white),
        ),
        body: MainForm(),
      ),
    );
  }
}

// Create a Form widget.
class MainForm extends StatefulWidget {
  @override
  MainFormState createState() => MainFormState();
}

// Holds data related to the form.
class MainFormState extends State<MainForm> {
  // Key that uniquely identifies the Form
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: SingleChildScrollView(
        child: Card(
          elevation: 16.0,
          shadowColor: Colors.deepPurple,
          margin: EdgeInsets.all(16),
          child: Padding(
            padding: EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                TextFormField(
                  decoration: new InputDecoration(hintText: "Nombre"),
                  keyboardType: TextInputType.name,
                  validator: (value) {
                    if (value!.isEmpty || value.length < 10) {
                      return 'Please enter a correct name (min 10)';
                    }
                    return null;
                  },
                ),
                TextFormField(
                  decoration: new InputDecoration(hintText: "Dirección"),
                  keyboardType: TextInputType.text,
                  validator: (value) {
                    if (value!.isEmpty || value.length < 20) {
                      return 'Please enter a correct adress (min 20)';
                    }
                    return null;
                  },
                ),
                TextFormField(
                  decoration:
                      new InputDecoration(hintText: "Numero de celular"),
                  keyboardType: TextInputType.phone,
                  obscureText: true,
                  validator: (value) {
                    if (value!.isEmpty || value.length < 11) {
                      return 'Please enter a correct celphone number (min 10)';
                    }
                    return null;
                  },
                ),
                TextFormField(
                  decoration:
                      new InputDecoration(hintText: "Cantidad de platillos"),
                  keyboardType: TextInputType.phone,
                  obscureText: true,
                  validator: (value) {
                    if (value!.isEmpty || value.length < 1) {
                      return 'Please enter a correct number (min 1)';
                    }
                    return null;
                  },
                ),
                Padding(padding: EdgeInsets.symmetric(vertical: 16)),
                ElevatedButton(
                    onPressed: () {
                      // If the form is true (valid), or false.
                      if (_formKey.currentState!.validate()) {
                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(content: Text('Processing Data')),
                        );
                      }
                    },
                    child: Text('Comprar')),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
