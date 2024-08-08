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
      body: ReorderableListView(
          onReorder: (oldIndex, newIndex) {
            setState(() {
              // logic to reorder the list items
              if (oldIndex < newIndex) newIndex -= 1;
              var selectedTask = taskList.removeAt(oldIndex);
              taskList.insert(newIndex, selectedTask);
            });
          },
          children: <Widget>[
            for (var task in taskList)
              ListTile(
                key: Key(task),
                title: Text(task),
              )
          ]),
    );
  }
}
