import 'package:flutter/material.dart';

class DCWrap extends StatelessWidget {
  const DCWrap({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Wrap Widget'),
      ),
      body: Wrap(
        spacing: 8.0,
        runSpacing: 8.0,
        // direction: Axis.horizontal,
        direction: Axis.vertical,
        children: [
          Container(
            color: Colors.red,
            height: 50.0,
            width: 120.0,
          ),
          Container(
            color: Colors.yellow,
            height: 50.0,
            width: 120.0,
          ),
          Container(
            color: Colors.green,
            height: 50.0,
            width: 120.0,
          ),
          Container(
            color: Colors.blue,
            height: 50.0,
            width: 120.0,
          ),
          Container(
            color: Colors.orange,
            height: 50.0,
            width: 120.0,
          ),
        ],
      ),
    );
  }
}
