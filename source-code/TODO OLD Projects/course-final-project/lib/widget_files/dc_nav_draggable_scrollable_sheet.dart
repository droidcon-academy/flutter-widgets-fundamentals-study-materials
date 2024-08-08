import 'package:flutter/material.dart';

class DCDraggableScrollableSheet extends StatelessWidget {
  const DCDraggableScrollableSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('DraggableScrollableSheet'),
      ),
      body: Stack(children: [
        SizedBox.expand(
          child: Container(
            color: Colors.blue[50],
          ),
        ),
        DraggableScrollableSheet(
          maxChildSize: 0.8,
          minChildSize: 0.2,
          initialChildSize: 0.2,
          builder: (BuildContext context, ScrollController scrollController) {
            return Container(
              color: Colors.blue[100],
              child: ListView.builder(
                controller: scrollController,
                itemCount: 25,
                itemBuilder: (BuildContext context, int index) {
                  return ListTile(title: Text('Item $index'));
                },
              ),
            );
          },
        ),
      ]),
    );
  }
}
