import 'package:flutter/material.dart';

class DCBottomNavigationBar extends StatefulWidget {
  const DCBottomNavigationBar({super.key});

  @override
  State<DCBottomNavigationBar> createState() => _DCBottomNavigationBarState();
}

class _DCBottomNavigationBarState extends State<DCBottomNavigationBar> {
  var selectedTabIndex = 0;

  static const List<Widget> tabWidgets = <Widget>[
    Icon(
      Icons.update,
      size: 40,
    ),
    Icon(
      Icons.call,
      size: 40,
    ),
    Icon(
      Icons.people,
      size: 40,
    ),
    Icon(
      Icons.chat,
      size: 40,
    ),
    Icon(
      Icons.settings,
      size: 40,
    )
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Bottom Navigation Bar')),
      body: Center(
        child: tabWidgets.elementAt(selectedTabIndex), //New
      ),
      bottomNavigationBar: BottomNavigationBar(
          selectedItemColor: Colors.green,
          unselectedItemColor: Colors.grey,
          currentIndex: selectedTabIndex,
          onTap: (value) {
            setState(() {
              selectedTabIndex = value;
            });
          },
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(icon: Icon(Icons.update), label: 'Status'),
            BottomNavigationBarItem(icon: Icon(Icons.call), label: 'Call'),
            BottomNavigationBarItem(
                icon: Icon(Icons.people), label: 'Community'),
            BottomNavigationBarItem(icon: Icon(Icons.chat), label: 'Chats'),
            BottomNavigationBarItem(
                icon: Icon(Icons.settings), label: 'Settings'),
          ]),
    );
  }
}
