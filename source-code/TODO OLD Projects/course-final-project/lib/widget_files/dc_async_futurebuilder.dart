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
          FutureBuilder(
              future: getFutureValue(),
              builder: (BuildContext context, AsyncSnapshot snapshot) {
                if (!snapshot.hasData) {
                  return const CircularProgressIndicator();
                } else if (snapshot.hasError) {
                  // Good practice to handle error
                  return const Text('Error has happened in the future!');
                } else {
                  return Text(snapshot.data,
                      style: const TextStyle(color: Colors.cyan, fontSize: 36));
                }
              })
        ]),
      ),
    );
  }
}

Future<String> getFutureValue() async {
  await Future.delayed(const Duration(seconds: 3));
  return 'Droidcon Academy';
}
