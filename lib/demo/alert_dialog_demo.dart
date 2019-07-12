import 'package:flutter/material.dart';
import "package:intl/intl.dart";

enum Action { cancel, ok }

class AlertDialogDemo extends StatefulWidget {
  @override
  _AlertDialogDemoState createState() => _AlertDialogDemoState();
}

class _AlertDialogDemoState extends State<AlertDialogDemo> {
  var _action = "Nothing";

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
            Text(
              'you choice is : $_action',
              style: TextStyle(fontSize: 25),
            ),
            SizedBox(height: 40,),
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

  void _openAlertDialog() async {
    var action = await showDialog(
        context: context,
        builder: _builderAlterDialog,
        barrierDismissible: false //在空白处关闭
        );

    switch (action) {
      case Action.cancel:
        setState(() {
          _action = 'cancel';
        });
        break;

      case Action.ok:
        setState(() {
          _action = 'ok';
        });
        break;
    }
  }

  Widget _builderAlterDialog(BuildContext context) {
    return AlertDialog(
      title: Text('AlertDialog'),
      content: Text('are you sure about this?'),
      actions: <Widget>[
        FlatButton(
          child: Text('Cancle'),
          onPressed: () {
            Navigator.pop(context, Action.cancel);
          },
        ),
        FlatButton(
          child: Text('Ok'),
          onPressed: () {
            Navigator.pop(context, Action.ok);
          },
        ),
      ],
    );
  }
}
