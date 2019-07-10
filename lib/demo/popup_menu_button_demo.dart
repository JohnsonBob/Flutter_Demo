import 'package:flutter/material.dart';

class PopupMenuButtonDemo extends StatefulWidget {
  @override
  _PopupMenuButtonDemoState createState() => _PopupMenuButtonDemoState();
}

class _PopupMenuButtonDemoState extends State<PopupMenuButtonDemo> {
  var _currentMenuItem = 'Home';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ButtonDemo'),
      ),
      body: Container(
        padding: EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(_currentMenuItem),
                PopupMenuButton(
                  itemBuilder: popupMenuButtonItemBuilder,
                  onSelected: (value){
                    print(value);
                    _currentMenuItem = value;
                  },
                )
              ],
            )
          ],
        ),
      ),
    );
  }

  List<PopupMenuEntry> popupMenuButtonItemBuilder(BuildContext context) {
    return [
      PopupMenuItem(
        value: 'Home',
        child: Text('Home'),
      ),
      PopupMenuItem(
        value: 'Discover',
        child: Text('Discover'),
      ),
      PopupMenuItem(
        value: 'Community',
        child: Text('Community'),
      ),
    ];
  }
}
