import 'package:flutter/material.dart';
import 'package:widgetbank/dc_helpers.dart';

class DCStatefulWidgetsSample extends StatefulWidget {
  const DCStatefulWidgetsSample({super.key});

  @override
  State<DCStatefulWidgetsSample> createState() =>
      _DCStatefulWidgetsSampleState();
}

enum Agreement { agree, disagree }

class _DCStatefulWidgetsSampleState extends State<DCStatefulWidgetsSample> {
  // Creating menu item for dropdown widgets
  static const menuItemsList = <String>[
    'Apple',
    'Banana',
    'Chikoo',
    'Dragon Fruit',
    'Elderberry'
  ];

  // drop-down list item for drop down button
  final List<DropdownMenuItem<String>> dropDownMenuItemList = menuItemsList
      .map((String val) =>
          DropdownMenuItem<String>(value: val, child: Text(val)))
      .toList();

  String selectedDropdownBasic = 'Apple';
  String? selectedDropdownHint;
  late String selectedPopUpItem;

// drop-down list item for pop up menu button
  final List<PopupMenuItem<String>> popUpMenuItemList = menuItemsList
      .map((String val) => PopupMenuItem<String>(value: val, child: Text(val)))
      .toList();

  // Variable for Switch widget
  bool switchStatus = true;

  // Variable for Checkbox widget
  bool isChecked = true;

  // For radio button
  Agreement? agreement = Agreement.agree;

  // Slide variable
  double sliderValue = 0.2;
  double sliderWithLabelValue = 2;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Other Widgets'),
      ),
      body: ListView(
        children: <Widget>[
          ListTile(
            title: const Text('DropDown Button - Basic'),
            trailing: DropdownButton(
              value: selectedDropdownBasic,
              items: dropDownMenuItemList,
              onChanged: (value) {
                setState(() {
                  selectedDropdownBasic = value!;
                });
              },
            ),
          ),
          ListTile(
            title: const Text('DropDown Button with hint'),
            trailing: DropdownButton(
              value: selectedDropdownHint,
              items: dropDownMenuItemList,
              hint: const Text('select'),
              onChanged: (value) {
                setState(() {
                  selectedDropdownHint = value!;
                });
              },
            ),
          ),
          ListTile(
            title: const Text('PopUp Menu Button'),
            trailing: PopupMenuButton(
              onSelected: (String value) {
                setState(() {
                  selectedPopUpItem = value;
                  showSnack(context, '$value selected');
                });
              },
              itemBuilder: (context) => popUpMenuItemList,
            ),
          ),
          const Divider(),
          ListTile(
            title: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    const Text('Switch'),
                    Switch(
                        value: switchStatus,
                        onChanged: (bool val) {
                          setState(() {
                            switchStatus = val;
                          });
                        }),
                    const Text('Disabled Switch'),
                    const Switch(value: true, onChanged: null),
                  ],
                ),
                const Divider(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    const Text('Checkbox'),
                    Checkbox(
                        value: isChecked,
                        onChanged: (val) {
                          setState(() {
                            isChecked = val!;
                          });
                        }),
                    const Text('Disabled Checkbox'),
                    const Checkbox(value: false, onChanged: null),
                  ],
                ),
              ],
            ),
          ),
          const Divider(),
          ListTile(
            title: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Padding(
                  padding: EdgeInsets.only(left: 18.0),
                  child: Text(
                    'Radio Button',
                    // style: CustomtextStyle.textStyle,
                  ),
                ),
                ListTile(
                  title: const Text('Agree'),
                  leading: Radio<Agreement>(
                      value: Agreement.agree,
                      groupValue: agreement,
                      onChanged: (value) {
                        setState(() {
                          agreement = value;
                        });
                      }),
                ),
                ListTile(
                  title: const Text('Disagree'),
                  leading: Radio<Agreement>(
                      value: Agreement.disagree,
                      groupValue: agreement,
                      onChanged: (value) {
                        setState(() {
                          agreement = value;
                        });
                      }),
                ),
              ],
            ),
          ),
          const Divider(),
          ListTile(
            title: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    const Expanded(flex: 2, child: Text('Slider Basic')),
                    Expanded(
                      flex: 4,
                      child: Slider(
                          value: sliderValue,
                          onChanged: (double val) {
                            setState(() {
                              sliderValue = val;
                            });
                          }),
                    ),
                  ],
                ),
                Row(
                  children: [
                    const Expanded(
                        flex: 2, child: Text('With division and labels')),
                    Expanded(
                      flex: 4,
                      child: Slider(
                          value: sliderWithLabelValue,
                          divisions: 10,
                          max: 10.0,
                          label: '${sliderWithLabelValue.round()}',
                          onChanged: (double val) {
                            setState(() {
                              sliderWithLabelValue = val;
                            });
                          }),
                    ),
                  ],
                ),
              ],
            ),
          ),
          const Divider(),
          ListTile(
            title: Column(children: <Widget>[
              Row(
                children: const [
                  Expanded(flex: 3, child: Text('Linear Progress Indicator')),
                  Expanded(
                    flex: 4,
                    child: LinearProgressIndicator(
                      color: Colors.orange,
                      backgroundColor: Colors.red,
                    ),
                  ),
                ],
              ),
              const Divider(),
              Row(
                children: const [
                  Expanded(flex: 3, child: Text('Circular Progress Indicator')),
                  Expanded(
                      flex: 4,
                      child: Center(
                          child: CircularProgressIndicator(
                        color: Colors.orange,
                        backgroundColor: Colors.red,
                      ))),
                ],
              ),
            ]),
          )
        ],
      ),
    );
  }
}
