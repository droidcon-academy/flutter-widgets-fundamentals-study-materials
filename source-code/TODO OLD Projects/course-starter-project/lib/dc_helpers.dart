import 'package:flutter/material.dart';
// ignore: depend_on_referenced_packages
import 'package:fluttertoast/fluttertoast.dart';

void showSnack(var context, String text) {
  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      content: Text(text),
      duration: const Duration(milliseconds: 500),
    ),
  );
}

showToast(var context, String text) => Fluttertoast.showToast(
    msg: text,
    toastLength: Toast.LENGTH_SHORT,
    gravity: ToastGravity.CENTER,
    backgroundColor: Colors.grey,
    textColor: Colors.white,
    fontSize: 16.0);

// Can add styles here
class CustomtextStyle {
  static const TextStyle textStyle = TextStyle(fontSize: 20.0);
}
