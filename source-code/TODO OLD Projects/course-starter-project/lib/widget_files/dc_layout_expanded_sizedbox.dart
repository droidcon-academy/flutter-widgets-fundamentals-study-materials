import 'package:flutter/material.dart';

class DCExpanded extends StatelessWidget {
  const DCExpanded({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Expanded & SizedBox'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(4.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              color: Colors.pinkAccent,
              height: 50.0,
              width: 50.0,
            ),
            Container(
              color: Colors.cyanAccent,
              height: 50.0,
              width: 50.0,
              child: const Text('flex'),
            ),
            Container(
              color: Colors.blue,
              height: 50.0,
              width: 50.0,
              child: const Text('flex'),
            ),
            Container(
              color: Colors.purpleAccent,
              height: 50.0,
              width: 50.0,
            ),
          ],
        ),
      ),
    );
  }
}
