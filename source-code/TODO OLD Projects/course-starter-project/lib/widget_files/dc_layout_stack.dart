import 'package:flutter/material.dart';

class DCStack extends StatelessWidget {
  AlignmentDirectional stackAlignmentDirectionalVal =
      AlignmentDirectional.bottomCenter;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Stack'),
      ),
      body: Center(child: null // Add code for Stack()
          ),
      bottomNavigationBar: null, // TODO - add code for getBottomBar()
    );
  }
}
