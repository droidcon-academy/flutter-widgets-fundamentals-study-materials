import 'package:flutter/material.dart';
import 'package:like_button/like_button.dart';
import 'package:widgetbank/dc_helpers.dart';

class DCButton extends StatelessWidget {
  const DCButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Button Widgets'),
      ),
      body: ListView(
        children: [
          const SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              // Add TextButton() here
              // Add disabled TextButton() here
              const Text(
                'Text Buttons',
                style: TextStyle(fontSize: 15.0),
              )
            ],
          ),
          const SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              // Code for ElevatedButton()
              // Code for disabled ElevatedButton()
              const Text(
                'Elevated Buttons',
                style: TextStyle(fontSize: 15.0),
              )
            ],
          ),
          const SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              // Code for OutlinedButton()
              // Code for disabled OutlinedButton()
              const Text(
                'Outlined Buttons',
                style: TextStyle(fontSize: 15.0),
              ),
            ],
          ),
          const SizedBox(height: 30),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: const <Widget>[
              // Code for basic LikeButton()
              Text('LikeButton basic'),
            ],
          ),
          const SizedBox(height: 30),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              // Code for LikeButton() with like count
              const Padding(
                padding: EdgeInsets.only(left: 40.0),
                child: Text('LikeButton with count'),
              ),
            ],
          ),
          const SizedBox(height: 30),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              // Code for LikeButton() with countBuilder
              const Text('Like multiple times'),
            ],
          )
        ],
      ),
    );
  }
}
