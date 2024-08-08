# Snippet 1
// Variables for SliverAppBar property values
bool _isSliverPinned = false;
bool _isSliverSnap = false;
bool _isSliverFloating = false;

# Snippet 2
// Call this function from bottomNavigationBar property of Scaffold
Widget _createBottomAppBar() {
    return BottomAppBar(
        child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
      const Text('pinned'),
      Switch(
          value: _isSliverPinned,
          onChanged: (bool value) {
            setState(() {
              _isSliverPinned = value;
            });
          }),
      const Text('snap'),
      Switch(
          value: _isSliverSnap,
          onChanged: (bool value) {
            setState(() {
              _isSliverSnap = value;
              _isSliverFloating = _isSliverFloating || value;
            });
          }),
      const Text('floating'),
      Switch(
          value: _isSliverFloating,
          onChanged: (bool value) {
            setState(() {
              _isSliverFloating = value;
              if (_isSliverSnap) {
                if (!_isSliverFloating) {
                  _isSliverSnap = false;
                }
              }
            });
          })
    ]));
  }


