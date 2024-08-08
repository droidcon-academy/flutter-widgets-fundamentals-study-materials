import 'package:flutter/material.dart';

class DCNavigationDrawer extends StatelessWidget {
  const DCNavigationDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Navigation Drawer')),
      drawer: Drawer(
          backgroundColor: const Color.fromARGB(153, 190, 242, 178),
          child: ListView(
            children: [
              const UserAccountsDrawerHeader(
                decoration: BoxDecoration(
                  color: Colors.greenAccent,
                ),
                accountEmail: Text('myemail@gmail.com'),
                accountName: Text('Name Field'),
                currentAccountPicture: CircleAvatar(
                  backgroundColor: Colors.white,
                  child: FlutterLogo(size: 42.0),
                ),
                // child: Text('Drawer Header')
              ),
              const ListTile(
                title: Text('Item 1'),
              ),
              const ListTile(
                title: Text('Item 2'),
              ),
              const ListTile(
                title: Text('Item 3'),
              ),
              ListTile(
                title: const Text('Close'),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
            ],
          )),
      body: const Center(
        child: Text('Click upper-left burger icon to see drawer.'),
      ),
    );
  }
}
