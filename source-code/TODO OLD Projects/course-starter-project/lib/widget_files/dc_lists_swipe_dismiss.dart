import 'package:flutter/material.dart';

class DCSwipeToDismissListTile extends StatefulWidget {
  const DCSwipeToDismissListTile({super.key});

  @override
  State<DCSwipeToDismissListTile> createState() =>
      _DCSwipeToDismissListTileState();
}

class _DCSwipeToDismissListTileState extends State<DCSwipeToDismissListTile> {
  // Generating the data source
  final listItems = List<String>.generate(100, (i) => 'Contact ${i + 1}');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Dismissable ListView'),
      ),
      body: ListView.builder(
          itemCount: 100,
          itemBuilder: ((context, index) {
            var currentItem = listItems[index];

            return null; // add code to return Dismissible() instead of null
          })),
    );
  }
}
