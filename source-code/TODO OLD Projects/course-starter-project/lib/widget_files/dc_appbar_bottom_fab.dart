import 'package:flutter/material.dart';

class DCBottomAppBarFAB extends StatefulWidget {
  const DCBottomAppBarFAB({super.key});

  @override
  State<DCBottomAppBarFAB> createState() => _DCBottomAppBarFABState();
}

class _DCBottomAppBarFABState extends State<DCBottomAppBarFAB> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Bottom Bar with FAB'),
      ),
      body: null, // add function getFABOptions() instead of null,
      bottomNavigationBar: null, // BottomAppBar() instead of null,,
    );
  }

  // Add code for getFABOptions()
}
