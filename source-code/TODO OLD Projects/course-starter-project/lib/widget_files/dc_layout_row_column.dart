import 'package:flutter/material.dart';

class DCRowColumn extends StatelessWidget {
  // Variables defined for row & column widget properties
  bool isColumn = false;

  MainAxisSize mainAxisSize = MainAxisSize.max;
  MainAxisAlignment mainAxisAlignment = MainAxisAlignment.center;
  CrossAxisAlignment crossAxisAlignment = CrossAxisAlignment.center;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Row & Column'),
      ),
      body: Container(
        color: Colors.lime,
        child: null, // TODO - add code for row/column
      ),
    );
  }
}
