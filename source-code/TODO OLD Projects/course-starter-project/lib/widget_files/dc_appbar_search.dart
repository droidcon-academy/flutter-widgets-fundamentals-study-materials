import 'package:flutter/material.dart';

class DCSearchBar extends StatelessWidget {
  const DCSearchBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Search Bar example'),
        actions: [
          IconButton(
            icon: const Icon(Icons.search),
            onPressed: () {
              // call showSearch()
            },
          )
        ],
      ),
      body: const Center(child: Text('Tap the search icon on the app bar')),
    );
  }
}
