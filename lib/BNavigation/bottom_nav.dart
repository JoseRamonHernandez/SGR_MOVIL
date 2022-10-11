import 'package:flutter/material.dart';

class BNavigator extends StatefulWidget {
  final Function currentIndex;
  const BNavigator({Key? key, required this.currentIndex}) : super(key: key);

  @override
  State<BNavigator> createState() => _BNavigatorState();
}

class _BNavigatorState extends State<BNavigator> {
  int index = 0;
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: index,
      onTap: (int i) {
        setState(() {
          index = i;
          widget.currentIndex(i);
        });
      },
      type: BottomNavigationBarType.fixed,
      iconSize: 25.0,
      selectedFontSize: 14.0,
      unselectedFontSize: 12.0,
      items: const [
        BottomNavigationBarItem(
            icon: Icon(Icons.local_grocery_store_sharp), label: 'Inicio'),
        BottomNavigationBarItem(
            icon: Icon(Icons.local_convenience_store_rounded), label: 'Locate'),
        BottomNavigationBarItem(
            icon: Icon(Icons.info_outline_rounded), label: 'Info-app'),
        BottomNavigationBarItem(icon: Icon(Icons.help_rounded), label: 'Ayuda'),
      ],
    );
  }
}
