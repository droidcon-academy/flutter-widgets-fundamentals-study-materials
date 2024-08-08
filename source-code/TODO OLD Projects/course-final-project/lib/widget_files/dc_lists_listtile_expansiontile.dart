import 'package:flutter/material.dart';

class DCListTileExpansionTile extends StatelessWidget {
  const DCListTileExpansionTile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ListTile & ExpandableListTile'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(4.0),
        child: ListView(
          children: <Widget>[
            const ListTile(
              tileColor: Colors.cyanAccent,
              title: Text('Simple List Tile'),
            ),
            const SizedBox(height: 4.0),
            const ListTile(
              tileColor: Colors.lightBlueAccent,
              title: Text('Simple List Tile'),
              subtitle: Text('List Tile with Subtitle'),
            ),
            const SizedBox(height: 4.0),
            const ListTile(
              tileColor: Colors.deepPurpleAccent,
              title: Text('Simple List Tile'),
              subtitle: Text('Three line ListTile'),
              isThreeLine: true,
              textColor: Colors.white,
            ),
            const SizedBox(height: 4.0),
            const ListTile(
              tileColor: Colors.deepOrangeAccent,
              title: Text('Dense List Tile'),
              dense: true,
            ),
            const SizedBox(height: 4.0),
            ListTile(
              tileColor: Colors.pinkAccent,
              leading: const Icon(
                Icons.person_2,
                color: Colors.white,
              ),
              trailing: Text(
                  '${DateTime.now().day} / ${DateTime.now().month} / ${DateTime.now().year}'),
              title: const Text('List Tile Full Fledged'),
              subtitle: const Text('Leading, trailing, title, subtitle'),
              textColor: Colors.white,
            ),
            const SizedBox(height: 4.0),
            const ExpansionTile(
              collapsedBackgroundColor: Colors.amberAccent,
              title: Text('Expansion Tile'),
              children: [
                ListTile(title: Text('First Child Tile')),
                ListTile(title: Text('Second Child Tile')),
                ListTile(title: Text('Third Child Tile'))
              ],
            ),
            const SizedBox(height: 4.0),
            const ExpansionTile(
              collapsedBackgroundColor: Colors.lightGreen,
              backgroundColor: Colors.lightGreenAccent,
              title: Text('Expansion Tile with leading icon'),
              controlAffinity: ListTileControlAffinity.leading,
              children: [
                ListTile(title: Text('First Child Tile')),
                ListTile(title: Text('Second Child Tile')),
                ListTile(title: Text('Third Child Tile'))
              ],
            )
          ],
        ),
      ),
    );
  }
}
