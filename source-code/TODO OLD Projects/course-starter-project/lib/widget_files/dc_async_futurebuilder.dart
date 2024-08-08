import 'package:flutter/material.dart';

class DCFutureBuilder extends StatefulWidget {
  const DCFutureBuilder({super.key});

  @override
  State<DCFutureBuilder> createState() => _DCFutureBuilderState();
}

class _DCFutureBuilderState extends State<DCFutureBuilder> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('FutureBuilder'),
      ),
      body: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          // TODO - Add code for FutureBuilder()
        ]),
      ),
    );
  }
}

