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
                Icon(
                  Icons.network_locked_sharp,
                  color: Colors.amber,
                  size: 30.0,
                  semanticLabel: 'This text announced if allowed',
                ),
                Icon(
                  Icons.wifi,
                  color: Colors.pink,
                  size: 50.0,
                ),
                Icon(
                  Icons.gpp_good_sharp,
                  color: Colors.deepPurple,
                  size: 60.0,
                ),
              ],
            ),
          ],
        ),
        const Divider(),
        Column(
          children: [
            const Text('Tap + icon to change score',
                style: TextStyle(fontSize: 20)),
            IconButton(
                onPressed: () {
                  setState(() {
                    _score++;
                  });
                },
                color: Colors.green,
                iconSize:
                    60, // not using Icon.size to avoid unexpected layout issue
                icon: const Icon(Icons.add_box_rounded)),
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
