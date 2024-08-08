import 'package:flutter/material.dart';

class DCSliversAppBar extends StatefulWidget {
  const DCSliversAppBar({super.key});

  @override
  State<DCSliversAppBar> createState() => _DCSliversAppBarState();
}

class _DCSliversAppBarState extends State<DCSliversAppBar> {
  bool _isSliverPinned = false;
  bool _isSliverSnap = false;
  bool _isSliverFloating = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            pinned: _isSliverPinned,
            snap: _isSliverSnap,
            floating: _isSliverFloating,
            // title: const Text('Sliver App Bar'),
            backgroundColor: Colors.red,
            expandedHeight: 200.0,
            flexibleSpace: FlexibleSpaceBar(
              title: const Text(
                'Sliver App Bar',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              centerTitle: true,
              background: Image.asset(
                'assets/images/space.jpg',
                fit: BoxFit.cover,
              ),
            ),
          ),

          SliverFixedExtentList(
              delegate: SliverChildListDelegate([
                Container(color: Colors.amberAccent),
                Container(color: Colors.brown),
                Container(color: Colors.amberAccent),
                Container(color: Colors.brown),
                Container(color: Colors.amberAccent),
              ]),
              itemExtent: 150.0),
          // Creates a sliver that fills the remaining space in the app screen
          const SliverFillRemaining(
            child: Center(
              child: Text('This is sample.'),
            ),
          ),
        ],
      ),
      bottomNavigationBar: _createBottomAppBar(),
    );
  }

  Widget _createBottomAppBar() {
    return BottomAppBar(
        child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
      const Text('pinned'),
      Switch(
          value: _isSliverPinned,
          onChanged: (bool value) {
            setState(() {
              _isSliverPinned = value;
            });
          }),
      const Text('snap'),
      Switch(
          value: _isSliverSnap,
          onChanged: (bool value) {
            setState(() {
              _isSliverSnap = value;
              _isSliverFloating = _isSliverFloating || value;
            });
          }),
      const Text('floating'),
      Switch(
          value: _isSliverFloating,
          onChanged: (bool value) {
            setState(() {
              _isSliverFloating = value;
              if (_isSliverSnap) {
                if (!_isSliverFloating) {
                  _isSliverSnap = false;
                }
              }
            });
          })
    ]));
  }
}
