import 'package:flutter/material.dart';
import "package:intl/intl.dart";

enum Option {
  A,B,C,D
}

class SimpleDialogDemo extends StatefulWidget {
  @override
  _SimpleDialogDemoState createState() => _SimpleDialogDemoState();
}


class _SimpleDialogDemoState extends State<SimpleDialogDemo> {
  var _choice = "Nothing";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('SimpleDialogDemo'),
      ),
      body: Container(
        padding: EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text('You chioce is: $_choice',style: TextStyle(fontSize: 25),)
              ],
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _openSimpleDialog,
        child: Icon(Icons.format_list_numbered),
      ),
    );
  }

  void _openSimpleDialog() async {
    var option = await showDialog(context: context, builder: _builderSimpleDialog);

    switch(option){
      case Option.A:
        setState(() {
          _choice = "A";
        });
        break;
      case Option.B:
        setState(() {
          _choice = "B";
        });
        break;
      case Option.C:
        setState(() {
          _choice = "C";
        });
        break;
      case Option.D:
        setState(() {
          _choice = "D";
        });
        break;
    }

  }

  Widget _builderSimpleDialog(BuildContext context) {
    return SimpleDialog(
      title: Text('SimpleDialog'),
      children: <Widget>[
        SimpleDialogOption(
          child: Text('Option A'),
          onPressed: () {
            Navigator.pop(context, Option.A);
          },
        ),
        SimpleDialogOption(
          child: Text('Option B'),
          onPressed: () {
            Navigator.pop(context, Option.B);
          },
        ),
        SimpleDialogOption(
          child: Text('Option C'),
          onPressed: () {
            Navigator.pop(context, Option.C);
          },
        ),
        SimpleDialogOption(
          child: Text('Option D'),
          onPressed: () {
            Navigator.pop(context, Option.D);
          },
        ),
      ],
    );
  }
}
