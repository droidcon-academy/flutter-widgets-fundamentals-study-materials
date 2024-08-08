import 'package:flutter/material.dart';

class DCStreamBuilder extends StatefulWidget {
  const DCStreamBuilder({super.key});

  @override
  State<DCStreamBuilder> createState() => _DCStreamBuilderState();
}

class _DCStreamBuilderState extends State<DCStreamBuilder> {
  int counter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
          // StreamBuilder is my subscriber. It uses the stream data
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text('Press the FAB to see the code in action'),
              const SizedBox(
                height: 15.0,
              ),
              // TODO - Add code for StreamBuilder()
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            counter++;
          },
          child: const Icon(Icons.add),
        ));
  }
}
