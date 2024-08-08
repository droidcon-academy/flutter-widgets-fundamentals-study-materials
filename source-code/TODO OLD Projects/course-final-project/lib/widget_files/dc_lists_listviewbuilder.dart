import 'package:flutter/material.dart';

class DCListViewBuilder extends StatelessWidget {
  const DCListViewBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ListView using Builder'),
      ),
      body: ListView.builder(
          itemCount: 1000,
          itemBuilder: ((context, index) {
            return ListTile(
              leading: const Icon(Icons.person),
              trailing: const Icon(Icons.arrow_forward),
              title: Text('Item $index'),
            );
          })),
    );
  }
}
