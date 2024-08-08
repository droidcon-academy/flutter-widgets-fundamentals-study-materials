import 'package:flutter/material.dart';

class DCTabNavigation extends StatelessWidget {
  const DCTabNavigation({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Tabs - Select your ride'),
        // Add TabBar() in the 'bottom' property here
      ),
      // Add TabBarView() in the 'body' property
    );
  }
}
