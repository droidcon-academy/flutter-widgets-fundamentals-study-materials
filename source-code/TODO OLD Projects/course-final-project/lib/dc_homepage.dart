// Code for home page of the app

import 'package:flutter/material.dart';

import 'dc_widgetbank_routes.dart';

class DCFlutterPlaygroundHomePage extends StatefulWidget {
  const DCFlutterPlaygroundHomePage({super.key});

  @override
  State<DCFlutterPlaygroundHomePage> createState() =>
      _DCFlutterPlaygroundHomePageState();
}

class _DCFlutterPlaygroundHomePageState
    extends State<DCFlutterPlaygroundHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Top AppBar
      appBar: AppBar(
        title: const Text('Widget Bank'),
      ),

      // Creating the list of items in the flutter playground
      body: ListView(
        children: [
          // List for Layout Widgets in Flutter
          Card(
            child: ExpansionTile(
              backgroundColor: Colors.lightGreen[100],
              collapsedBackgroundColor: Colors.lightGreen[100],
              textColor: Colors.black,
              title: const Text('Layout Widgets'),
              children: [
                Container(
                    color: Colors.lightGreen[50],
                    child: Column(
                        children: dcLayoutRoutes.map((myLayoutR) {
                      return ListTile(
                        leading: const FlutterLogo(),
                        title: Text(myLayoutR.widgetName),
                        trailing: const Icon(Icons.arrow_right),
                        onTap: () {
                          Navigator.pushNamed(context, myLayoutR.routeName);
                        },
                      );
                    }).toList())),
              ],
            ),
          ),

          // List of basic widgets in flutter
          Card(
            child: ExpansionTile(
              backgroundColor: Colors.pink[100],
              collapsedBackgroundColor: Colors.pink[100],
              textColor: Colors.black,
              title: const Text('Basic Widgets'),
              subtitle: const Text('Text, button, switches in Flutter'),
              children: [
                Container(
                    color: Colors.pink[50],
                    child: Column(
                        children: dcBasicRoutes.map((myBasicR) {
                      return ListTile(
                        leading: const FlutterLogo(),
                        title: Text(myBasicR.widgetName),
                        subtitle: Text(myBasicR.widgetDescription),
                        trailing: const Icon(Icons.arrow_right),
                        onTap: () {
                          Navigator.pushNamed(context, myBasicR.routeName);
                        },
                      );
                    }).toList())),
              ],
            ),
          ),

          // AppBar widgets
          Card(
            child: ExpansionTile(
              backgroundColor: Colors.orange[100],
              collapsedBackgroundColor: Colors.orange[100],
              textColor: Colors.black,
              title: const Text('AppBars'),
              children: [
                Container(
                  color: Colors.orange[50],
                  child: Column(
                      children: dcAppBarRoutes.map((myAppbarR) {
                    return ListTile(
                      leading: const FlutterLogo(),
                      title: Text(myAppbarR.widgetName),
                      trailing: const Icon(Icons.arrow_right),
                      onTap: () {
                        Navigator.pushNamed(context, myAppbarR.routeName);
                      },
                    );
                  }).toList()),
                ),
              ],
            ),
          ),

          // List Widgets
          Card(
            child: ExpansionTile(
              backgroundColor: Colors.indigo[100],
              collapsedBackgroundColor: Colors.indigo[100],
              textColor: Colors.black,
              title: const Text('Lists'),
              children: [
                Container(
                    color: Colors.indigo[50],
                    child: Column(
                        children: dcListWidgetRoutes.map((myListWidgetsR) {
                      return ListTile(
                        leading: const FlutterLogo(),
                        title: Text(myListWidgetsR.widgetName),
                        trailing: const Icon(Icons.arrow_right),
                        onTap: () {
                          Navigator.pushNamed(
                              context, myListWidgetsR.routeName);
                        },
                      );
                    }).toList())),
              ],
            ),
          ),

          // Navigation Widgets
          Card(
            child: ExpansionTile(
              backgroundColor: Colors.purple[100],
              collapsedBackgroundColor: Colors.purple[100],
              textColor: Colors.black,
              title: const Text('Navigation'),
              children: [
                Container(
                    color: Colors.purple[50],
                    child: Column(
                        children: dcNavigationWidgetRoutes.map((myNavR) {
                      return ListTile(
                        leading: const FlutterLogo(),
                        title: Text(myNavR.widgetName),
                        trailing: const Icon(Icons.arrow_right),
                        onTap: () {
                          Navigator.pushNamed(context, myNavR.routeName);
                        },
                      );
                    }).toList())),
              ],
            ),
          ),

          // Async Widgets
          Card(
            child: ExpansionTile(
              backgroundColor: Colors.brown[100],
              collapsedBackgroundColor: Colors.brown[100],
              textColor: Colors.black,
              title: const Text('Async'),
              children: [
                Container(
                  color: Colors.brown[50],
                  child: Column(
                      children: dcAsyncWidgetRoutes.map((myAsyncR) {
                    return ListTile(
                      leading: const FlutterLogo(),
                      title: Text(myAsyncR.widgetName),
                      trailing: const Icon(Icons.arrow_right),
                      onTap: () {
                        Navigator.pushNamed(context, myAsyncR.routeName);
                      },
                    );
                  }).toList()),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
