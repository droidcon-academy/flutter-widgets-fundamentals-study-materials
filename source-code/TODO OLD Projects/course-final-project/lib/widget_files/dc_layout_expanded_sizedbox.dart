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
            const SizedBox(
              width: 5.0,
            ),
            Expanded(
              flex: 1,
              child: Container(
                color: Colors.cyanAccent,
                height: 50.0,
                width: 50.0,
                child: const Text('flex-1'),
              ),
            ),
            const SizedBox(
              width: 5.0,
            ),
            Expanded(
              flex: 2,
              child: Container(
                color: Colors.blue,
                height: 50.0,
                width: 50.0,
                child: const Text('flex-2'),
              ),
            ),
            const SizedBox(
              width: 5.0,
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
