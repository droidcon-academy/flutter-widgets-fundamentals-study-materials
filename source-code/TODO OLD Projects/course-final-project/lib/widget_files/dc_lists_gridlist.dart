import 'package:flutter/material.dart';

class DCGridList extends StatelessWidget {
  const DCGridList({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Grid List'),
      ),
      body: GridView.count(
        mainAxisSpacing: 4,
        crossAxisSpacing: 4,
        crossAxisCount: 3,
        children: List.generate(150, (index) {
          return Container(
            height: 50,
            width: 50,
            color:
                (index % 2 == 0) ? Colors.amberAccent : Colors.deepOrangeAccent,
            child: Center(child: Text((++index).toString())),
          );
        }),
      ),
    );
  }
}
