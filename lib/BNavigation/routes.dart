import 'package:flutter/material.dart';
import 'package:sgr_application1/pages/help.dart';
import 'package:sgr_application1/pages/home.dart';
import 'package:sgr_application1/pages/info_app.dart';
import 'package:sgr_application1/pages/locate.dart';

class Routes extends StatelessWidget {
  final int index;
  const Routes({Key? key, required this.index}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<Widget> myList = [
      const Home(),
      const Locate(),
      const Info_app(),
      const Help()
    ];
    return myList[index];
  }
}
