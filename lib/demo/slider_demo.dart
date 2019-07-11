import 'package:flutter/material.dart';
import "package:intl/intl.dart";

class DateTimeDemo extends StatefulWidget {
  @override
  _DateTimeDemoState createState() => _DateTimeDemoState();
}

class _DateTimeDemoState extends State<DateTimeDemo> {
  var _selecteDate = DateTime.now();
  var _selecteTime = TimeOfDay(hour: 9, minute: 30);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('DateTimeDemo'),
      ),
      body: Container(
        padding: EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                InkWell(
                  onTap: _onSelectDate,
                  child: Row(
                    children: <Widget>[
                      Text(DateFormat.yMMMMd().format(_selecteDate)),
                      Icon(Icons.arrow_drop_down),
                    ],
                  ),
                ),
                InkWell(
                  onTap: _onSelectTime,
                  child: Row(
                    children: <Widget>[
                      Text(_selecteTime.format(context)),
                      Icon(Icons.arrow_drop_down),
                    ],
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }

  Future<void> _onSelectDate() async {
    final DateTime selecteTime1 = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(1993),
      lastDate: DateTime.now(),
    );
    if (selecteTime1 == null) return;
    setState(() {
      _selecteDate = selecteTime1;
    });
  }

  Future<void> _onSelectTime() async {
    final time =
        await showTimePicker(context: context, initialTime: _selecteTime);
    if (time == null) return;
    setState(() {
      _selecteTime = time;
    });
  }
}
