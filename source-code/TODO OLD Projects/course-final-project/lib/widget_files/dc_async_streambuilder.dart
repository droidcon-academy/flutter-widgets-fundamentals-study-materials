import 'dart:async';
import 'package:flutter/material.dart';

class DCStreamBuilder extends StatefulWidget {
  const DCStreamBuilder({super.key});

  @override
  State<DCStreamBuilder> createState() => _DCStreamBuilderState();
}

class _DCStreamBuilderState extends State<DCStreamBuilder> {
  // The stream data will be int here
  StreamController<int> myStreamController = StreamController<int>();
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
              const Text(
                'Data is added to the sink only when the FAB is pressed. \n We are using StreamBuider and StreamController here.\n There is no setState() used.',
                textAlign: TextAlign.center,
              ),
              StreamBuilder(
                stream: myStreamController.stream,
                builder: (context, snapshot) {
                  if (snapshot.connectionState == ConnectionState.waiting) {
                    return Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text('ConnectionState -> waiting',
                              style:
                                  TextStyle(color: Colors.red, fontSize: 20)),
                        ),
                        const CircularProgressIndicator(),
                        Visibility(
                          visible: snapshot.hasData,
                          child: Text(
                            snapshot.data.toString(),
                            style: const TextStyle(
                                color: Colors.black, fontSize: 24),
                          ),
                        ),
                      ],
                    );
                  } else if (snapshot.connectionState ==
                          ConnectionState.active ||
                      snapshot.connectionState == ConnectionState.done) {
                    if (snapshot.hasError) {
                      return const Text('Error');
                    } else if (snapshot.hasData) {
                      return Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          children: [
                            const Text(
                              'ConnectionState -> hasData',
                              style: TextStyle(color: Colors.red, fontSize: 20),
                              textAlign: TextAlign.center,
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: CircleAvatar(
                                backgroundColor: Colors.grey,
                                child: Text(
                                  snapshot.data.toString(),
                                  style: const TextStyle(
                                      fontSize: 30, color: Colors.white),
                                  textAlign: TextAlign.center,
                                ),
                              ),
                            ),
                          ],
                        ),
                      );
                    } else {
                      return const Text('0',
                          style: TextStyle(color: Colors.red, fontSize: 40));
                    }
                  } else {
                    return Text('State: ${snapshot.connectionState}');
                  }
                },
              ),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            counter++;

            // Adding this counter to the sink so that the stream can use it.
            myStreamController.sink.add(counter);
          },
          child: const Icon(Icons.add),
        ));
  }
}
