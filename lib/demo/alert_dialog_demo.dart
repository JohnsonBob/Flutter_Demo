import 'package:flutter/material.dart';
import "package:intl/intl.dart";

enum Option { A, B, C, D }

class AlertDialogDemo extends StatefulWidget {
  @override
  _AlertDialogDemoState createState() => _AlertDialogDemoState();
}

class _AlertDialogDemoState extends State<AlertDialogDemo> {
  var _choice = "Nothing";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('AlertDialogDemo'),
      ),
      body: Container(
        padding: EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                RaisedButton(
                  child: Text('Open AlertDialog'),
                  onPressed: _openAlertDialog,
                )
              ],
            )
          ],
        ),
      ),
    );
  }

  void _openAlertDialog() {
    showDialog(
        context: context,
        builder: _builderAlterDialog,
        barrierDismissible: false   //在空白处关闭
    );
  }

  Widget _builderAlterDialog(BuildContext context) {
    return AlertDialog(
      title: Text('AlertDialog'),
      content: Text('are you sure about this?'),
      actions: <Widget>[
        FlatButton(
          child: Text('Cancle'),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        FlatButton(
          child: Text('Ok'),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ],
    );
  }
}
