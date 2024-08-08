import 'package:flutter/material.dart';

class DCTabNavigation extends StatelessWidget {
  const DCTabNavigation({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Tabs - Select your ride'),
          bottom: const TabBar(
            tabs: [
              Icon(Icons.car_rental),
              Icon(Icons.flight),
              Icon(Icons.train)
            ],
          ),
        ),
        body: TabBarView(children: [
          Container(
            color: Colors.amberAccent,
            child: const Icon(Icons.person, size: 40.0),
          ),
          Container(
            color: Colors.redAccent,
            child: const Icon(Icons.person_2, size: 40.0),
          ),
          Container(
            color: Colors.blueAccent,
            child: const Icon(Icons.person_3, size: 40.0),
          ),
        ]),
      ),
    );
  }
}
