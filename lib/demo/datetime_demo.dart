import 'package:flutter/material.dart';

class SliderDemo extends StatefulWidget {
  @override
  _SliderDemoState createState() => _SliderDemoState();
}

class _SliderDemoState extends State<SliderDemo> {
  var _sliderValueA = 0.0;
  var _sliderValueB = 0.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('SliderDemo'),
      ),
      body: Container(
        padding: EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Slider(
              value: _sliderValueA,
              activeColor: Theme.of(context).accentColor,
              inactiveColor: Theme.of(context).accentColor.withOpacity(0.3),
              onChanged: (value) {
                setState(() {
                  _sliderValueA = value;
                });
              },
            ),
            SizedBox(height: 80,),
            Text('sliderValue： ${_sliderValueB.toInt()}'),
            SizedBox(height: 20,),
            Slider(
              value: _sliderValueB,
              activeColor: Theme.of(context).accentColor,
              inactiveColor: Theme.of(context).accentColor.withOpacity(0.3),
              onChanged: (value) {
                setState(() {
                  _sliderValueB = value;
                });
              },
              min: 0.0,
              max: 10,
              divisions: 10,  //均分为多少份
              label: '${_sliderValueB.toInt()}',
            ),
          ],
        ),
      ),
    );
  }
}
