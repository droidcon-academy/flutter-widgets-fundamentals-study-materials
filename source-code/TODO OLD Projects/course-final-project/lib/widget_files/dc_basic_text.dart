import 'package:flutter/material.dart';

class DCText extends StatelessWidget {
  const DCText({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Text Widgets'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            const Text('This is basic text'),
            const Text(
              'This is bold text',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            Text(
              'Text using theme style',
              style: Theme.of(context).textTheme.titleMedium,
            ),
            const Text(
              'This is underline text',
              style: TextStyle(
                  color: Colors.amber,
                  decoration: TextDecoration.underline,
                  fontSize: 20),
            ),
            const Text(
              'This is underline text',
              style: TextStyle(
                  decoration: TextDecoration.underline,
                  decorationStyle: TextDecorationStyle.dashed,
                  fontSize: 20),
            ),
            const Text(
              'This is underline text',
              style: TextStyle(
                  decoration: TextDecoration.underline,
                  decorationStyle: TextDecorationStyle.dotted,
                  fontSize: 20),
            ),
            RichText(
                text: const TextSpan(
                    text: 'This is rich text ',
                    children: <TextSpan>[
                  TextSpan(
                      text: 'using ',
                      style: TextStyle(fontStyle: FontStyle.italic)),
                  TextSpan(
                      text: 'TextSpan',
                      style: TextStyle(fontWeight: FontWeight.bold))
                ])),
          ],
        ),
      ),
    );
  }
}
