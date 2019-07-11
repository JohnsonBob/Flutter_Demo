import 'package:flutter/material.dart';

class RadioDemo extends StatefulWidget {
  @override
  _RadioDemoState createState() => _RadioDemoState();
}

class _RadioDemoState extends State<RadioDemo> {
  var _radioGroupA = 0;
  var _radioGroupB = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('RadioDemo'),
      ),
      body: Container(
        padding: EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Radio(
                  value: 0,
                  groupValue: _radioGroupA,
                  onChanged: _handleRadioValueChanged,
                  activeColor: Colors.black,
                ),
                Radio(
                  value: 1,
                  groupValue: _radioGroupA,
                  onChanged: _handleRadioValueChanged,
                  activeColor: Colors.black,
                ),
                Radio(
                  value: 2,
                  groupValue: _radioGroupA,
                  onChanged: _handleRadioValueChanged,
                  activeColor: Colors.black,
                ),
              ],
            ),
            SizedBox(
              height: 60,
            ),
            Text('RadioGroupValue: $_radioGroupB'),
            SizedBox(
              height: 10,
            ),
            RadioListTile(
              value: 0,
              groupValue: _radioGroupB,
              title: Text('Options A'),
              onChanged: _handleRadioBValueChanged,
              subtitle: Text('Description'),
              selected: _radioGroupB == 0,
              secondary: Icon(Icons.filter_1),
            ),
            RadioListTile(
              value: 1,
              groupValue: _radioGroupB,
              title: Text('Options C'),
              onChanged: _handleRadioBValueChanged,
              subtitle: Text('Description'),
              selected: _radioGroupB == 1,
              secondary: Icon(Icons.filter_2),
            ),
            RadioListTile(
              value: 2,
              groupValue: _radioGroupB,
              title: Text('Options C'),
              onChanged: _handleRadioBValueChanged,
              subtitle: Text('Description'),
              selected: _radioGroupB == 2,
              secondary: Icon(Icons.filter_3),
            ),
          ],
        ),
      ),
    );
  }

  void _handleRadioValueChanged(int value) {
    setState(() {
      _radioGroupA = value;
    });
  }

  void _handleRadioBValueChanged(int value) {
    setState(() {
      _radioGroupB = value;
    });
  }
}
