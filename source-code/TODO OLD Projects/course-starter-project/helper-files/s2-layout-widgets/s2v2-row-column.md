** Contains the code for section 2 - Video 2 - Row & Column **

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
