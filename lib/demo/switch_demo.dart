import 'package:flutter/material.dart';

class SwitchDemo extends StatefulWidget {
  @override
  _SwitchDemoState createState() => _SwitchDemoState();
}

class _SwitchDemoState extends State<SwitchDemo> {
  var _switchValue = false;
  var _switchValue2 = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('SwitchDemo'),
      ),
      body: Container(
        padding: EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  _switchValue == true ? '😂' : '😁',
                  style: TextStyle(fontSize: 30),
                ),
                Switch(
                  value: _switchValue,
                  onChanged: (value) {
                    setState(() {
                      _switchValue = value;
                    });
                  },
                )
              ],
            ),
            SizedBox(
              height: 50,
            ),
            SwitchListTile(
              value: _switchValue2,
              title: Text('Switch item A'),
              subtitle: Text('Description'),
              secondary: _switchValue2
                  ? Icon(Icons.visibility)
                  : Icon(Icons.visibility_off),
              selected: _switchValue2,
              onChanged: (value) {
                setState(() {
                  _switchValue2 = value;
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}
