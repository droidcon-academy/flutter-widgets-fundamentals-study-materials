# Snippet 1
// Add these variables in _DCBottomAppBarFABState
 FloatingActionButtonLocation _fabLocation =
      FloatingActionButtonLocation.centerDocked;
  bool _isFabMini = false;
  bool _isBottomBarNotched = false;


# Snippet 2
// getFABOptions() function to add options for BottomAppBar and FAB
ListView getFABOptions() {
    return ListView(
      children: <Widget>[
        ListTile(
          title: const Text('FAB Position'),
          trailing: DropdownButton<FloatingActionButtonLocation>(
              value: _fabLocation,
              onChanged: (FloatingActionButtonLocation? newLocation) {
                if (newLocation != null) {
                  setState(() => _fabLocation = newLocation);
                }
              },
              items: fabLocationOptions),
        ),
        ListTile(
          title: const Text('FAB Mini'),
          trailing: Switch(
              value: _isFabMini,
              onChanged: (bool val) {
                setState(() {
                  _isFabMini = val;
                });
              }),
        ),
        ListTile(
          title: const Text('Notch BottomBar'),
          trailing: Switch(
              value: _isBottomBarNotched,
              onChanged: (bool val) {
                setState(() {
                  _isBottomBarNotched = val;
                });
              }),
        ),
      ],
    );
  }

// Code to create list for the DropDownButton
List<DropdownMenuItem<FloatingActionButtonLocation>> get fabLocationOptions {
    return const [
      DropdownMenuItem(
        value: FloatingActionButtonLocation.centerDocked,
        child: Text('centerDocked'),
      ),
      DropdownMenuItem(
        value: FloatingActionButtonLocation.centerFloat,
        child: Text('centerFloat'),
      ),
      DropdownMenuItem(
        value: FloatingActionButtonLocation.centerTop,
        child: Text('centerTop'),
      ),
      DropdownMenuItem(
        value: FloatingActionButtonLocation.endContained,
        child: Text('endContained'),
      ),
      DropdownMenuItem(
        value: FloatingActionButtonLocation.endDocked,
        child: Text('endDocked'),
      ),
      DropdownMenuItem(
        value: FloatingActionButtonLocation.endFloat,
        child: Text('endFloat'),
      ),
      DropdownMenuItem(
        value: FloatingActionButtonLocation.endTop,
        child: Text('endTop'),
      ),
      DropdownMenuItem(
        value: FloatingActionButtonLocation.startDocked,
        child: Text('startDocked'),
      ),
      DropdownMenuItem(
        value: FloatingActionButtonLocation.startFloat,
        child: Text('startFloat'),
      ),
      DropdownMenuItem(
        value: FloatingActionButtonLocation.startTop,
        child: Text('startTop'),
      ),
    ];
  }
