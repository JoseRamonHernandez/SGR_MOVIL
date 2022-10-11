import 'package:flutter/material.dart';
import 'package:sgr_application1/BNavigation/bottom_nav.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text("MENÚS DISPONIBLES"),
          backgroundColor: Colors.deepPurpleAccent),
      //  bottomNavigationBar: BNavigator(),
      body: Center(
        child: Text("Menús disponibles"),
      ),
    );
  }
}
