import 'package:flutter/material.dart';
import "package:intl/intl.dart";

class SnackBarDemo extends StatefulWidget {
  @override
  _SnackBarDemoState createState() => _SnackBarDemoState();
}

class _SnackBarDemoState extends State<SnackBarDemo> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('SnackBarDemo'),
      ),
      body: Container(
        padding: EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                SnackBarButton()
              ],
            )
          ],
        ),
      ),
    );
  }


}

class SnackBarButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      child: Text('Open SnackBar'),
      onPressed: (){
        _openSnackBar(context);
      },
    );
  }

  _openSnackBar(BuildContext context) {
    Scaffold.of(context).showSnackBar(
        SnackBar(
          content: Text('Processing..'),
          action: SnackBarAction(
            label: 'ok',
            onPressed: (){},
          ),
        )
    );
  }
}

