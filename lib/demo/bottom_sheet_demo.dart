import 'package:flutter/material.dart';
import "package:intl/intl.dart";

class BottomSheetDemo extends StatefulWidget {
  @override
  _BottomSheetDemoState createState() => _BottomSheetDemoState();
}

class _BottomSheetDemoState extends State<BottomSheetDemo> {
  var _result = "Nothing";
  final _bottomSheetScaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _bottomSheetScaffoldKey,
      appBar: AppBar(
        title: Text('BottomSheetDemo'),
      ),
      body: Container(
        padding: EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'ModalSheet result is : $_result',
              style: TextStyle(fontSize: 20),
            ),
            SizedBox(
              height: 40,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                FlatButton(
                  child: Text('Open BottonShett'),
                  onPressed: _openBottoMShett,
                ),
                FlatButton(
                  child: Text('Modal BottonShett'),
                  onPressed: _openModalShett,
                ),
              ],
            )
          ],
        ),
      ),
    );
  }

  void _openBottoMShett() {
    _bottomSheetScaffoldKey.currentState.showBottomSheet((context) {
      return BottomAppBar(
        child: Container(
          height: 90,
          width: double.infinity,
          padding: EdgeInsets.all(16.0),
          child: Row(
            children: <Widget>[
              Icon(Icons.pause_circle_outline),
              SizedBox(
                width: 16,
              ),
              Text('01:30 / 03:30'),
              Expanded(
                child: Text('Fix you - GlodPlay'),
              )
            ],
          ),
        ),
      );
    });
  }

  void _openModalShett() async {
    String result = await showModalBottomSheet(
        context: context, builder: _builderModalSheet);

    setState(() {
      _result = result.toString();
    });
  }

  Widget _builderModalSheet(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 200,
      child: Column(
        children: <Widget>[
          ListTile(
            title: Text('Option A'),
            onTap: () {
              Navigator.pop(context, 'A');
            },
          ),
          ListTile(
            title: Text('Option B'),
            onTap: () {
              Navigator.pop(context, 'B');
            },
          ),
          ListTile(
            title: Text('Option C'),
            onTap: () {
              Navigator.pop(context, 'C');
            },
          ),
        ],
      ),
    );
  }
}
