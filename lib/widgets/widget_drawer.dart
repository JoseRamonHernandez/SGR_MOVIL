import 'package:flutter/material.dart';
import 'package:sgr_application1/pages/help.dart';
import 'package:sgr_application1/pages/home.dart';
import 'package:sgr_application1/pages/info_app.dart';
import 'package:sgr_application1/pages/locate.dart';

class MenuLateral extends StatelessWidget {
  //const MenuLateral({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          DrawerHeader(
            child: Column(
              children: [
                Expanded(
                  child: Image.asset('assets/logo2.png'),
                ),
              ],
            ),
            decoration: BoxDecoration(
              color: Colors.amber[600],
            ),
          ),
          ListTile(
            title: const Text('Menú'),
            leading: Icon(Icons.restaurant_menu),
            onTap: () {
              Navigator.pushNamed(context, HomePage.id);
            },
          ),
          ListTile(
            title: const Text('Acerca de Nosotros'),
            leading: Icon(Icons.food_bank),
            onTap: () {
              Navigator.pushNamed(context, LocatePage.id);
            },
          ),
          ListTile(
            title: const Text('Ayuda'),
            leading: Icon(Icons.help_center),
            onTap: () {
              Navigator.pushNamed(context, HelpPage.id);
            },
          ),
          ListTile(
            title: const Text('Información app'),
            leading: Icon(Icons.info),
            onTap: () {
              Navigator.pushNamed(context, Info_app.id);
            },
          ),
        ],
      ),
    );
  }
}
