import 'package:flutter/material.dart';

class FloatingActionButtonDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('FloatingActionButtonDemo'),
      ),
      floatingActionButton: _floatingActionButton,
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        child: Container(
          height: 80,
        ),
        shape: CircularNotchedRectangle(),
      ),
    );
  }

  final _floatingActionButton = FloatingActionButton(
    onPressed: () {},
    child: Icon(
      Icons.add,
      color: Colors.white,
    ),
    backgroundColor: Colors.blue,
    elevation: 0.0,
    /*shape: BeveledRectangleBorder(
      borderRadius: BorderRadius.circular(30.0),
    ),*/
  );

  final _floatingActionButtonExtended = FloatingActionButton.extended(
    onPressed: () {},
    label: Text('add'),
    icon: Icon(Icons.add),
  );
}