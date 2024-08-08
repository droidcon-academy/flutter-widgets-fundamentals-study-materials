import 'package:flutter/material.dart';

class DCSliversAppBar extends StatefulWidget {
  const DCSliversAppBar({super.key});

  @override
  State<DCSliversAppBar> createState() => _DCSliversAppBarState();
}

class _DCSliversAppBarState extends State<DCSliversAppBar> {
  // Define variables for SliverAppBar property values

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: // Add CustomScrollView() and slivers.
          CustomScrollView(
        slivers: <Widget>[
          // Add code for SliverAppBar()
          // Add code for SliverFixedExtentList()
          // Add code for SliverFillRemaining()
        ],
      ),
      bottomNavigationBar: null, // call _createBottomAppBar(),
    );
  }

  // Add code for _createBottomAppBar()
}
