import 'package:flutter/material.dart';

class DCReorderableList extends StatefulWidget {
  const DCReorderableList({super.key});

  @override
  State<DCReorderableList> createState() => _DCReorderableListState();
}

class _DCReorderableListState extends State<DCReorderableList> {
  final taskList = List<String>.generate(100, (i) => 'Task ${i + 1}');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Reorderable List View'),
      ),
      body: null, // Code for ReorderableListView(),
    );
  }
}
