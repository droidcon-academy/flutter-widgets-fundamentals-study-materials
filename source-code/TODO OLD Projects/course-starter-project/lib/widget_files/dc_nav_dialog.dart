import 'package:flutter/material.dart';
import 'package:widgetbank/dc_helpers.dart';
import 'package:intl/intl.dart';

class DCDialog extends StatelessWidget {
  const DCDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Dialogs')),
      body: ListView(
        padding: const EdgeInsets.all(30.0),
        children: [
          ElevatedButton(
              onPressed: () {
                showSimpleDialog(context);
              },
              child: const Text('Simple Dialog')),
          ElevatedButton(
              onPressed: () {
                showAlertDialog(context);
              },
              child: const Text('Alert Dialog')),
          ElevatedButton(
              onPressed: () {
                showTimePickerDialog(context);
              },
              child: const Text('Time Picker Dialog')),
          ElevatedButton(
              onPressed: () {
                showDatePickerDialog(context);
              },
              child: const Text('DatePicker Dialog')),
          ElevatedButton(
              onPressed: () {
                showDateRangePickerDialog(context);
              },
              child: const Text('Date Range Picker Dialog')),
          ElevatedButton(
              onPressed: () {
                showBottomSheetDialog(context);
              },
              child: const Text('Modal Bottom Sheet')),
        ]
            .map((Widget button) => Container(
                  padding: const EdgeInsets.symmetric(vertical: 8.0),
                  child: button,
                ))
            .toList(),
      ),
    );
  }

  void showAlertDialog(BuildContext context) {}

  void showSimpleDialog(BuildContext context) {}

  void showTimePickerDialog(BuildContext context) {}

  void showDatePickerDialog(BuildContext context) {}

  void showDateRangePickerDialog(BuildContext context) {}

  void showBottomSheetDialog(BuildContext context) {}
}
