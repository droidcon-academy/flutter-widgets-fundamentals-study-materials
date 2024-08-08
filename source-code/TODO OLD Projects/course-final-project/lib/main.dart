import 'package:flutter/material.dart';
import 'dc_widgetbank_routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Anna\'s Flutter Playground',
      debugShowCheckedModeBanner: false,
      // home is not required when defining initial route
      initialRoute: 'home',
      routes: WidgetBankRoutes.dcRouteBuilder(),
      // home: DCFlutterPlaygroundHomePage(),
      theme: ThemeData(primarySwatch: Colors.teal),
    );
  }
}
