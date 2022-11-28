import 'package:flutter/material.dart';
import 'package:sgr_application1/pages/help.dart';
import 'package:sgr_application1/pages/home.dart';
import 'package:sgr_application1/pages/info_app.dart';
import 'package:sgr_application1/pages/locate.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: HomePage.id,
      routes: {
        HomePage.id: (context) => HomePage(),
        LocatePage.id: (context) => LocatePage(),
        HelpPage.id: (context) => HelpPage(),
        Info_app.id: (context) => Info_app(),
      },
    );
  }
}
