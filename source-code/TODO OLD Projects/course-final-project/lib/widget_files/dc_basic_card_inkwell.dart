import 'package:flutter/material.dart';

class DCCardInkwell extends StatelessWidget {
  const DCCardInkwell({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Card & Inkwell in Flutter'),
      ),
      body: ListView(padding: const EdgeInsets.all(8.0), children: [
        const Card(
          color: Color(0xFFA2E8C6),
          elevation: 5.0,
          child: SizedBox(
              height: 75.0, child: Center(child: Text('This is a Basic Card'))),
        ),
        const Card(
          color: Color(0xFF6CD0EC),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(45.0)),
          ),
          child: SizedBox(
              height: 75.0,
              child: Center(child: Text('This is a Card with custom radius'))),
        ),
        Card(
          color: Colors.amber,
          elevation: 5.0,
          child: InkWell(
            splashColor: Colors.amberAccent,
            onTap: () {},
            child: const SizedBox(
                height: 75.0,
                child:
                    Center(child: Text('This is a Card with Inkwell effect'))),
          ),
        ),
        Card(
          color: const Color(0xFFF2DFDF),
          elevation: 5.0,
          child: SizedBox(
              height: 75.0,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  const Center(
                      child: Text('This is a card with action buttons')),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      TextButton(onPressed: () {}, child: const Text('SAVE')),
                      TextButton(onPressed: () {}, child: const Text('CANCEL')),
                    ],
                  )
                ],
              )),
        ),
      ]),
    );
  }
}
