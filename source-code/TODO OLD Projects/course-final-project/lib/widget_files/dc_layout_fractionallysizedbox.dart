import 'package:flutter/material.dart';

class DCFractionallySizedBox extends StatelessWidget {
  const DCFractionallySizedBox({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('FractionallySizedBox'),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Flexible(
              child: FractionallySizedBox(
                heightFactor: 0.5,
                widthFactor: 1,
                child: Container(
                  color: Colors.orange,
                ),
              ),
            ),
            const Flexible(
              child: FractionallySizedBox(
                heightFactor: 0.1,
              ),
            ),
            Flexible(
              child: FractionallySizedBox(
                  heightFactor: 0.4,
                  widthFactor: 0.7,
                  alignment: Alignment.center,
                  child: ElevatedButton(
                      onPressed: () {}, child: const Text('Press Me'))),
            ),
            // For white space
            const Flexible(
              child: FractionallySizedBox(
                heightFactor: 0.1,
              ),
            ),
            Flexible(
              child: FractionallySizedBox(
                  heightFactor: 0.3,
                  child: ElevatedButton(
                      onPressed: () {}, child: const Text('Press Me'))),
            ),
          ],
        ));
  }
}
