import 'package:flutter/material.dart';

class DCTextField extends StatefulWidget {
  const DCTextField({super.key});

  @override
  State<DCTextField> createState() => _DCTextFieldState();
}

class _DCTextFieldState extends State<DCTextField> {
  bool showPassword = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('TextField Widgets'),
      ),
      body: Container(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: <Widget>[],
        ),
      ),
    );
  }
}
