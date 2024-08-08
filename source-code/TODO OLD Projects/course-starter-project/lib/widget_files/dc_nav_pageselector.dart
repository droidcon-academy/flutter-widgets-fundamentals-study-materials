import 'package:flutter/material.dart';

class DCPageSelector extends StatelessWidget {
  const DCPageSelector({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Page Selector')),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: <Widget>[
            // Add TabPageSelector(),
            // Add TabBarView()
            // Add SKIP button
          ],
        ),
      ),
    );
  }
}
