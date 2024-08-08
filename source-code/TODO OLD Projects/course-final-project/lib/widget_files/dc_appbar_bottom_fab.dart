import 'package:flutter/material.dart';

class DCBottomAppBarFAB extends StatefulWidget {
  const DCBottomAppBarFAB({super.key});

  @override
  State<DCBottomAppBarFAB> createState() => _DCBottomAppBarFABState();
}

class _DCBottomAppBarFABState extends State<DCBottomAppBarFAB> {
  FloatingActionButtonLocation _fabLocation =
      FloatingActionButtonLocation.centerDocked;
  bool _isFabMini = false;
  bool _isBottomBarNotched = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Bottom Bar with FAB'),
      ),
      body: getFABOptions(),
      bottomNavigationBar: BottomAppBar(
          color: Theme.of(context).primaryColor,
          shape: _isBottomBarNotched ? const CircularNotchedRectangle() : null,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.star_border_outlined)),
            ],
          )),
      floatingActionButtonLocation: _fabLocation,
      floatingActionButton: FloatingActionButton(
          mini: _isFabMini,
          backgroundColor: Colors.pinkAccent,
          onPressed: () {},
          child: const Icon(Icons.mic)),
    );
  }

  ListView getFABOptions() {
    return ListView(
      children: <Widget>[
        ListTile(
          title: const Text('FAB Position'),
          trailing: DropdownButton<FloatingActionButtonLocation>(
              value: _fabLocation,
              onChanged: (FloatingActionButtonLocation? newLocation) {
                if (newLocation != null) {
                  setState(() => _fabLocation = newLocation);
                }
              },
              items: fabLocationOptions),
        ),
        ListTile(
          title: const Text('FAB Mini'),
          trailing: Switch(
              value: _isFabMini,
              onChanged: (bool val) {
                setState(() {
                  _isFabMini = val;
                });
              }),
        ),
        ListTile(
          title: const Text('Notch BottomBar'),
          trailing: Switch(
              value: _isBottomBarNotched,
              onChanged: (bool val) {
                setState(() {
                  _isBottomBarNotched = val;
                });
              }),
        ),
      ],
    );
  }

  List<DropdownMenuItem<FloatingActionButtonLocation>> get fabLocationOptions {
    return const [
      DropdownMenuItem(
        value: FloatingActionButtonLocation.centerDocked,
        child: Text('centerDocked'),
      ),
      DropdownMenuItem(
        value: FloatingActionButtonLocation.centerFloat,
        child: Text('centerFloat'),
      ),
      DropdownMenuItem(
        value: FloatingActionButtonLocation.centerTop,
        child: Text('centerTop'),
      ),
      DropdownMenuItem(
        value: FloatingActionButtonLocation.endContained,
        child: Text('endContained'),
      ),
      DropdownMenuItem(
        value: FloatingActionButtonLocation.endDocked,
        child: Text('endDocked'),
      ),
      DropdownMenuItem(
        value: FloatingActionButtonLocation.endFloat,
        child: Text('endFloat'),
      ),
      DropdownMenuItem(
        value: FloatingActionButtonLocation.endTop,
        child: Text('endTop'),
      ),
      DropdownMenuItem(
        value: FloatingActionButtonLocation.startDocked,
        child: Text('startDocked'),
      ),
      DropdownMenuItem(
        value: FloatingActionButtonLocation.startFloat,
        child: Text('startFloat'),
      ),
      DropdownMenuItem(
        value: FloatingActionButtonLocation.startTop,
        child: Text('startTop'),
      ),
    ];
  }
}
