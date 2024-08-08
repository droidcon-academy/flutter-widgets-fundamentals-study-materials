import 'package:flutter/material.dart';
import 'package:widgetbank/dc_helpers.dart';

class DCStatefulWidgetsSample extends StatefulWidget {
  const DCStatefulWidgetsSample({super.key});

  @override
  State<DCStatefulWidgetsSample> createState() =>
      _DCStatefulWidgetsSampleState();
}

// Options for RadioButton()
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

  // Variable for Switch widget. Tells if the switch is on or off
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
              trailing: null // add the code for dropdown button instead of null
              ),
          ListTile(
              title: const Text('DropDown Button with hint'),
              trailing:
                  null // // add the code for dropdown with hint instead of null
              ),
          ListTile(
              title: const Text('PopUp Menu Button'),
              trailing: null // add the code for PopupMenuButton instead of null
              ),
          const Divider(),
          ListTile(
            title: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    const Text('Switch'),
                    // Add code for switch
                    const Text('Disabled Switch'),
                    // Add code for disabled switch
                  ],
                ),
                const Divider(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    const Text('Checkbox'),
                    // Add code for CheckBox
                    const Text('Disabled Checkbox'),
                    // Add code for disabled CheckBox
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
                  ),
                ),
                ListTile(
                  title: const Text('Agree'),
                  leading: null, // add RadiosButton 1 instead of null
                ),
                ListTile(
                    title: const Text('Disagree'),
                    leading: null // RadioButton 2 instead of null
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
                        flex: 4, child: Text('') // Slider instead of Text()
                        ),
                  ],
                ),
                Row(
                  children: [
                    const Expanded(
                        flex: 2, child: Text('With division and labels')),
                    Expanded(
                        flex: 4,
                        child:
                            Text('') // Slider with division instead of Text()
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
                    child: Text(''),
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
                          child: Text(
                              '') // CircularProgressIndicator() instead Text()
                          )),
                ],
              ),
            ]),
          )
        ],
      ),
    );
  }
}
