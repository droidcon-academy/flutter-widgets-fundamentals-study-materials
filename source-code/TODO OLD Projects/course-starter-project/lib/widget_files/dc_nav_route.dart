import 'package:flutter/material.dart';

class DCRouteEx extends StatelessWidget {
  const DCRouteEx({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Route First Page'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            // Navigate to the second screen when tapped.
          },
          child: const Text('Second page'),
        ),
      ),
    );
  }
}
