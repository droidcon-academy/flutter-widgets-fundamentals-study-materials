import 'package:flutter/material.dart';

class DCListTileExpansionTile extends StatelessWidget {
  const DCListTileExpansionTile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ListTile & ExpansionTile'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(4.0),
        child: ListView(
          children: <Widget>[
            // Simple List Tile

            const SizedBox(height: 4.0),

            // List Tile with Subtitle

            const SizedBox(height: 4.0),

            // Three line ListTile

            const SizedBox(height: 4.0),

            // Dense List Tile

            const SizedBox(height: 4.0),

            // List Tile with Leading, trailing, title, subtitle

            const SizedBox(height: 4.0),

            // Simple ExpansionTile()

            const SizedBox(height: 4.0),

            // ExpansionTile() with leading icon
          ],
        ),
      ),
    );
  }
}
