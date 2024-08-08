import 'package:flutter/material.dart';

class DCPageSelector extends StatelessWidget {
  const DCPageSelector({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Page Selector')),
      body: DefaultTabController(
          length: 5,
          child: Builder(builder: (context) {
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: <Widget>[
                  const TabPageSelector(),
                  const Expanded(
                    child: TabBarView(children: [
                      Icon(
                        Icons.update,
                        size: 40,
                      ),
                      Icon(
                        Icons.call,
                        size: 40,
                      ),
                      Icon(
                        Icons.people,
                        size: 40,
                      ),
                      Icon(
                        Icons.chat,
                        size: 40,
                      ),
                      Icon(
                        Icons.settings,
                        size: 40,
                      )
                    ]),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      final TabController controller =
                          DefaultTabController.of(context);
                      if (!controller.indexIsChanging) {
                        controller
                            .animateTo(5 - 1); // take to the end of selector
                      }
                    },
                    child: const Text('SKIP'),
                  )
                ],
              ),
            );
          })),
    );
  }
}
