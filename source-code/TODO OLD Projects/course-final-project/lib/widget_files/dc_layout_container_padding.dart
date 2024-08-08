import 'package:flutter/material.dart';

class DCContainerPadding extends StatelessWidget {
  const DCContainerPadding({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Container & Padding'),
      ),
      body: Center(
        child: Container(
            color: Colors.indigo,
            height: 160.0,
            width: 280.0,
            child: Padding(
              padding: const EdgeInsets.all(28.0),
              child: Container(
                decoration: BoxDecoration(
                  border: Border.all(width: 2.0),
                  color: Colors.red,
                ),
                transform: Matrix4.rotationZ(0.1),
                alignment: Alignment.topRight,
                child: const Text('Smile Please'),
              ),
            )),
      ),
    );
  }
}
