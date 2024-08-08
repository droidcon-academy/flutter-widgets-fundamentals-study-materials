import 'package:flutter/material.dart';
import 'package:widgetbank/dc_helpers.dart';

class DCImage extends StatelessWidget {
  const DCImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Working with Images'),
      ),
      body: Center(
        child: ListView(children: [
          Column(
            children: <Widget>[
              const SizedBox(height: 10),
              const Text(
                'Image from asset in project',
                style: CustomtextStyle.textStyle,
              ),
              const Card(
                  // Code to load Image() from asset
                  ),
              const SizedBox(height: 10),
              const Text(
                'Image from Network',
                style: CustomtextStyle.textStyle,
              ),
              Card(
                  // Add code for Image.network()
                  ),
              const SizedBox(height: 10),
              const Text(
                'Image from Network with fade in effect',
                style: CustomtextStyle.textStyle,
              ),
              Card(
                child: Stack(children: [
                  // Code to load Image from Network with Fade in effect
                ]),
              ),
              const SizedBox(height: 10),
              const Text(
                'Cached Image from Network',
                style: CustomtextStyle.textStyle,
              ),
              Card(
                  // Code to load cached image from network
                  ),
              const SizedBox(height: 10),
              const Text(
                'Extended Image Package',
                style: CustomtextStyle.textStyle,
              ),
              // Code to load ExtendedImage from network
              const SizedBox(height: 10),
            ],
          ),
        ]),
      ),
    );
  }
}
