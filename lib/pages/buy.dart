import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:io';

class Buy extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text('Formulario de compra'),
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
                FlatButton.icon(
                    onPressed: null,
                    textColor: Theme.of(context).primaryColor,
                    icon: Icon(Icons.image),
                    label: Text('Añadir foto')),
                TextFormField(
                  decoration: new InputDecoration(hintText: "Nombre"),
                  keyboardType: TextInputType.name,
                  validator: (value) {
                    if (value!.isEmpty || value.length < 2) {
                      return 'Please enter a correct username (min 2)';
                    }
                    return null;
                  },
                ),
                TextFormField(
                  decoration: new InputDecoration(hintText: "Dirección"),
                  keyboardType: TextInputType.text,
                  validator: (value) {
                    if (value!.isEmpty || value.length < 2) {
                      return 'Please enter a correct username (min 2)';
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
                      return 'Please enter a correct password (min 10)';
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
                  child: Text('Signup'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
