import 'package:flutter/material.dart';

class DCRowColumn extends StatefulWidget {
  const DCRowColumn({super.key});

  @override
  State<DCRowColumn> createState() => _DCRowColumnState();
}

class _DCRowColumnState extends State<DCRowColumn> {
  // These are the variables for changing the values in final app. Use the values for demo in course
  bool isColumn = false;
  MainAxisSize mainAxisSize = MainAxisSize.max;
  MainAxisAlignment mainAxisAlignment = MainAxisAlignment.center;
  CrossAxisAlignment crossAxisAlignment = CrossAxisAlignment.center;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Row & Column'),
      ),
      body: Container(
          color: Colors.lime,
          child: isColumn
              ? Column(
                  // used if CrossAxisAlignment.baseline is used
                  textBaseline: TextBaseline.alphabetic,
                  // using varibales here for final demo app. use values for demo in video
                  mainAxisSize: mainAxisSize,
                  mainAxisAlignment: mainAxisAlignment,
                  crossAxisAlignment: crossAxisAlignment,

                  // can optimize this to create a separate variable
                  children: const <Widget>[
                    Icon(Icons.home, size: 60.0),
                    Icon(Icons.home, size: 120.0),
                    Icon(Icons.home, size: 60.0)
                  ],
                )
              : Row(
                  textBaseline: TextBaseline.alphabetic,
                  mainAxisSize: mainAxisSize,
                  mainAxisAlignment: mainAxisAlignment,
                  crossAxisAlignment: crossAxisAlignment,
                  children: const <Widget>[
                    Icon(Icons.home, size: 60.0),
                    Icon(Icons.home, size: 120.0),
                    Icon(Icons.home, size: 60.0)
                  ],
                )),
      bottomNavigationBar: getBottomBar(),
    );
  }

  Widget getBottomBar() {
    return Container(
      color: Colors.tealAccent,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Row(
            children: [
              Radio(
                  value: false,
                  groupValue: isColumn,
                  onChanged: (bool? val) {
                    setState(() {
                      isColumn = val!;
                    });
                  }),
              const Text('Row'),
              Radio(
                  value: true,
                  groupValue: isColumn,
                  onChanged: (bool? val) {
                    setState(() {
                      isColumn = val!;
                    });
                  }),
              const Text('Column')
            ],
          ),
          ListTile(
            title: const Text('mainAxisSize'),
            trailing: DropdownButton<MainAxisSize>(
              value: mainAxisSize,
              items: MainAxisSize.values
                  .map((MainAxisSize val) => DropdownMenuItem(
                      value: val,
                      child: Text(
                          val.toString().substring('MainAxisSize.'.length))))
                  .toList(),
              onChanged: (MainAxisSize? newVal) {
                setState(() {
                  mainAxisSize = newVal!;
                });
              },
            ),
          ),
          ListTile(
            title: const Text('mainAxisSize'),
            trailing: DropdownButton<MainAxisAlignment>(
              value: mainAxisAlignment,
              items: MainAxisAlignment.values
                  .map((MainAxisAlignment val) => DropdownMenuItem(
                      value: val,
                      child: Text(val
                          .toString()
                          .substring('MainAxisAlignment.'.length))))
                  .toList(),
              onChanged: (MainAxisAlignment? newVal) {
                setState(() {
                  mainAxisAlignment = newVal!;
                });
              },
            ),
          ),
          ListTile(
            title: const Text('mainAxisSize'),
            trailing: DropdownButton<CrossAxisAlignment>(
              value: crossAxisAlignment,
              items: CrossAxisAlignment.values
                  .map((CrossAxisAlignment val) => DropdownMenuItem(
                      value: val,
                      child: Text(val
                          .toString()
                          .substring('CrossAxisAlignment.'.length))))
                  .toList(),
              onChanged: (CrossAxisAlignment? newVal) {
                setState(() {
                  crossAxisAlignment = newVal!;
                });
              },
            ),
          )
        ],
      ),
    );
  }
}
