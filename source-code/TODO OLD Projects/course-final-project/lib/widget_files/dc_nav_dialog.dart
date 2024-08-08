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

  void showAlertDialog(BuildContext context) {
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: const Text('This is Alert Title'),
            content: const Text('This is the main content of alert dialog'),
            actions: <Widget>[
              TextButton(
                onPressed: () => Navigator.pop(context, 'Cancel'),
                child: const Text('Cancel'),
              ),
              TextButton(
                onPressed: () => Navigator.pop(context, 'OK'),
                child: const Text('OK'),
              ),
            ],
          );
        }).then((selectedAction) {
      // To execute action based on the selected action item
      if (selectedAction != null) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text('You clicked: $selectedAction'),
            action: SnackBarAction(label: 'OK', onPressed: () {}),
          ),
        );
      }
    });
  }

  void showSimpleDialog(BuildContext context) {
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return SimpleDialog(
            title: const Text('Simple Dialog by Droidcon Academy'),
            children: <Widget>[
              SimpleDialogOption(
                  child: const Text('Option 1'),
                  onPressed: () => Navigator.pop(context, 'Option 1')),
              SimpleDialogOption(
                  child: const Text('Option 2'),
                  onPressed: () => Navigator.pop(context, 'Option 2')),
              SimpleDialogOption(
                  child: const Text('Option 3'),
                  onPressed: () => Navigator.pop(context, 'Option 3')),
            ],
          );
        }).then((value) {
      (value != null) ? showToast(context, '$value selected') : {};
    });
  }

  void showTimePickerDialog(BuildContext context) {
    DateTime current = DateTime.now();
    showTimePicker(
      context: context,
      initialTime: TimeOfDay(hour: current.hour, minute: current.minute),
    ).then((value) {
      showToast(context, 'Time chosen: ${value?.format(context)}');
    });
  }

  void showDatePickerDialog(BuildContext context) {
    showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(1994),
      lastDate: DateTime(2054),
    ).then((value) {
      if (value != null) {
        showToast(context, DateFormat.yMMMd().format(value));
      } else {}
    });
  }

  void showDateRangePickerDialog(BuildContext context) {
    showDateRangePicker(
      context: context,
      firstDate: DateTime.now(),
      lastDate: DateTime(2054),
    ).then((value) {
      if (value != null) {
        String dateRange =
            '${DateFormat.yMMMd().format(value.start)} -> ${DateFormat.yMMMd().format(value.end)}';

        showToast(context, dateRange);
      } else {}
    });
  }

  void showBottomSheetDialog(BuildContext context) {
    showModalBottomSheet(
      context: context,
      builder: (context) {
        return Wrap(
          children: const <Widget>[
            ListTile(
              leading: Icon(Icons.share),
              title: Text('Share'),
            ),
            ListTile(
              leading: Icon(Icons.copy),
              title: Text('Copy Link'),
            ),
            ListTile(
              leading: Icon(Icons.edit),
              title: Text('Edit'),
            ),
          ],
        );
      },
    );
    // });
  }
}
