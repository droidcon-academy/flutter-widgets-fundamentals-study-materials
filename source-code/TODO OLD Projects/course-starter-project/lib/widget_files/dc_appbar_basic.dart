import 'package:flutter/material.dart';

class DCBasicAppBar extends StatelessWidget {
  const DCBasicAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Simple App Bar'),
      ),
      body: ListView(
        children: [
          Container(
              margin: const EdgeInsets.only(top: 8.0),
              child: null // AppBar() with centerTitle instead of null
              ),
          Container(
            margin: const EdgeInsets.only(top: 8.0),
            child: null, // AppBar() with actions instead of null
          ),
          Container(
            margin: const EdgeInsets.only(top: 8.0),
            child: null, // AppBar() with theme properties instead of null
          ),
          Container(
            margin: const EdgeInsets.only(top: 8.0),
            child: null, // AppBar() with logo instead of null
          ),
          Container(
            margin: const EdgeInsets.only(top: 8.0),
            child: null, // AppBar() with elevation instead of null
          ),
          Container(
            margin: const EdgeInsets.only(top: 8.0),
            child: null, // Transperant AppBar() instead of null
          ),
        ],
      ),
    );
  }
}
