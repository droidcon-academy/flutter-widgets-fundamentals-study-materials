import 'package:flutter/material.dart';

class DCNavigationDrawer extends StatelessWidget {
  const DCNavigationDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Navigation Drawer')),
      // add Drawer() to the drawer property
      body: const Center(
        child: Text('Click upper-left burger icon to see drawer.'),
      ),
    );
  }
}
