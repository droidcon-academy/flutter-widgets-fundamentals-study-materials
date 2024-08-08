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

            return Dismissible(
              // Each list item name here is unique. Hence item name is key.
              key: Key(currentItem),
              // property when swiped right
              background: Container(
                color: Colors.lightGreen,
                padding: const EdgeInsets.only(left: 15.0),
                alignment: Alignment.centerLeft,
                child: const Icon(Icons.delete),
              ),
              // property when swiped left
              secondaryBackground: Container(
                color: Colors.grey,
                padding: const EdgeInsets.only(right: 15.0),
                alignment: Alignment.centerRight,
                child: const Icon(Icons.archive),
              ),
              onDismissed: (direction) {
                setState(() {
                  listItems.removeAt(index);
                });
                var actionText = direction == DismissDirection.endToStart
                    ? ' archived'
                    : ' deleted';
                ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                  content: Text('$currentItem $actionText'),
                  action: SnackBarAction(
                    label: 'UNDO',
                    onPressed: () {
                      setState(() => listItems.insert(index, currentItem));
                    },
                  ),
                ));
              },
              child: ListTile(
                leading: const Icon(Icons.person),
                title: Text(currentItem),
              ),
            );
          })),
    );
  }
}
