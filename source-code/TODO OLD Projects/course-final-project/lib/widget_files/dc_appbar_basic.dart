import 'package:flutter/material.dart';

class DCBasicAppBar extends StatelessWidget {
  const DCBasicAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Simple App Bar'),
      ),
      body: ListView(
        children: [
          Container(
            margin: const EdgeInsets.only(top: 8.0),
            child: AppBar(
              title: const Column(
                children: <Widget>[
                  Text('Center Title'),
                  Text(
                    'Subtitle Title',
                    style: TextStyle(fontSize: 12.0),
                  ),
                ],
              ),
              // Use this property to make the title at center
              centerTitle: true,
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 8.0),
            child: AppBar(title: const Text('AppBar Actions'), actions: [
              TextButton(
                style: TextButton.styleFrom(
                    foregroundColor: Theme.of(context).colorScheme.onPrimary),
                onPressed: () {},
                child: const Text('info'),
              ),
              IconButton(onPressed: () {}, icon: const Icon(Icons.settings)),
              IconButton(onPressed: () {}, icon: const Icon(Icons.search)),
            ]),
          ),
          Container(
            margin: const EdgeInsets.only(top: 8.0),
            child: AppBar(
              backgroundColor: Colors.lightGreen,
              title: const Text('AppBar Theme'),
              actions: <Widget>[
                TextButton(
                  onPressed: () {},
                  child: const Text(
                    'info',
                    style: TextStyle(color: Colors.red),
                  ),
                ),
                IconButton(onPressed: () {}, icon: const Icon(Icons.settings)),
                IconButton(onPressed: () {}, icon: const Icon(Icons.search)),
              ],

              // Theme for icon and title text style
              iconTheme: const IconThemeData(color: Colors.black87),
              titleTextStyle: const TextStyle(
                  color: Colors.black87,
                  fontSize: 20.0,
                  fontWeight: FontWeight.w500),
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 8.0),
            child: AppBar(
              // property to remove the leading widget, the back arrow
              automaticallyImplyLeading: false,
              title: const Row(
                children:  <Widget>[
                  Icon(Icons.home),
                  Padding(
                    padding: EdgeInsets.only(left: 30.0),
                    child: Text('AppBar with Logo'),
                  ),
                ],
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 8.0),
            child: AppBar(
              title: const Text('Shadow AppBar'),
              elevation: 0,
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 8.0),
            child: AppBar(
              backgroundColor: Colors.transparent,
              elevation: 0,
              iconTheme: const IconThemeData(color: Colors.black),
              title: const Text(
                'Transperant AppBar',
                style: TextStyle(color: Colors.black),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
