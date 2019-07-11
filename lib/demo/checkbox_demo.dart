import 'package:flutter/material.dart';

class CheckBoxDemo extends StatefulWidget {
  @override
  _CheckBoxDemoState createState() => _CheckBoxDemoState();
}

class _CheckBoxDemoState extends State<CheckBoxDemo> {
  var _checkboxItemValueA = true;
  var _checkboxItemValueB = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('CheckBoxDemo'),
      ),
      body: Container(
        padding: EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Checkbox(
                  value: _checkboxItemValueA,
                  activeColor: Colors.black,
                  onChanged: (value) {
                    setState(() {
                      _checkboxItemValueA = value;
                    });
                  },
                ),
              ],
            ),
            CheckboxListTile(
              value: _checkboxItemValueB,
              title: Text('CheckBox item A'),
              onChanged: (value) {
                setState(() {
                  _checkboxItemValueB = value;
                });
              },
              subtitle: Text('Description'),
              selected: _checkboxItemValueB,
              secondary: Icon(Icons.bookmark),
            ),
          ],
        ),
      ),
    );
  }
}
