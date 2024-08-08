import 'package:flutter/material.dart';

class DCStack extends StatefulWidget {
  const DCStack({super.key});

  @override
  State<DCStack> createState() => _DCStackState();
}

class _DCStackState extends State<DCStack> {
  AlignmentDirectional stackAlignmentDirectionalVal =
      AlignmentDirectional.bottomCenter;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Stack'),
      ),
      body: Center(
        child: Stack(
          alignment: stackAlignmentDirectionalVal,
          children: <Widget>[
            Container(
              color: Colors.cyanAccent,
              height: 150,
              width: 150,
            ),
            Container(
              color: Colors.lightBlue,
              height: 130,
              width: 130,
            ),
            Container(
              color: Colors.deepPurpleAccent,
              height: 110,
              width: 110,
            ),
            Container(
              color: Colors.pinkAccent,
              height: 90,
              width: 90,
            )
          ],
        ),
      ),
      bottomNavigationBar: getBottomBar(),
    );
  }

  getBottomBar() {
    const dcStackAlignmentDirectionalValues = <String, AlignmentDirectional>{
      'topStart': AlignmentDirectional.topStart,
      'topCenter': AlignmentDirectional.topCenter,
      'topEnd': AlignmentDirectional.topEnd,
      'centerStart': AlignmentDirectional.centerStart,
      'center': AlignmentDirectional.center,
      'centerEnd': AlignmentDirectional.centerEnd,
      'bottomStart': AlignmentDirectional.bottomStart,
      'bottomCenter': AlignmentDirectional.bottomCenter,
      'bottomEnd': AlignmentDirectional.bottomEnd
    };

    return Container(
      color: Theme.of(context).secondaryHeaderColor,
      child: ListTile(
        title: const Text('mainAxisSize'),
        trailing: DropdownButton<AlignmentDirectional>(
          value: stackAlignmentDirectionalVal,
          items: dcStackAlignmentDirectionalValues.values
              .map((AlignmentDirectional val) => DropdownMenuItem(
                  value: val,
                  child: Text(val
                      .toString()
                      .substring('AlignmentDirectional.'.length))))
              .toList(),
          onChanged: (AlignmentDirectional? newVal) {
            setState(() {
              stackAlignmentDirectionalVal = newVal!;
            });
          },
        ),
      ),
    );
  }
}
