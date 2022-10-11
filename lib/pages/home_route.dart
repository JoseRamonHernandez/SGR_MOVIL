import 'package:flutter/material.dart';
import 'package:sgr_application1/BNavigation/bottom_nav.dart';
import 'package:sgr_application1/BNavigation/routes.dart';

class Home_route extends StatefulWidget {
  const Home_route({Key? key}) : super(key: key);

  @override
  State<Home_route> createState() => _Home_routeState();
}

class _Home_routeState extends State<Home_route> {
  int index = 0;
  BNavigator? myBNB;

  @override
  void initState() {
    myBNB = BNavigator(currentIndex: (i) {
      setState(() {
        index = i;
      });
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: myBNB,
      body: Routes(index: index),
    );
  }
}
