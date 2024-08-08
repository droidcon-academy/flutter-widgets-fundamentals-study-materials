import 'package:flutter/material.dart';

class DCIcon extends StatefulWidget {
  const DCIcon({super.key});

  @override
  State<DCIcon> createState() => _DCIconState();
}

class _DCIconState extends State<DCIcon> {
  var _score = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Icon Widget'),
      ),
      body: ListView(children: <Widget>[
        Column(
          children: [
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                'Simple icons of diferrent sizes',
                style: TextStyle(fontSize: 20),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                // TODO - Add Icon() widgets here
              ],
            ),
          ],
        ),
        const Divider(),
        Column(
          children: [
            const Text('Tap + icon to change score',
                style: TextStyle(fontSize: 20)),
            // TODO - add code for IconButton()
            Text(
              'Current Score: $_score',
              style: const TextStyle(fontSize: 18, color: Colors.red),
            ),
          ],
        ),
      ]),
    );
  }
}
