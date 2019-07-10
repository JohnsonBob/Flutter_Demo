import 'package:flutter/material.dart';

import 'button_demo.dart';
import 'floating_action_button_demo.dart';
import 'popup_menu_button_demo.dart';

class MaterialComponent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('MaterialComponent'),
        elevation: 0.0,
      ),
      body: ListView(
        children: <Widget>[
          ListItem(
              title: "FloatingActionButton", page: FloatingActionButtonDemo()),
          ListItem(title: "ButtonDemo", page: ButtonDemo()),
          ListItem(title: "PopupMenuButtonDemo", page: PopupMenuButtonDemo()),
        ],
      ),
    );
  }
}

class ListItem extends StatelessWidget {
  final String title;
  final Widget page;

  ListItem({this.title, this.page});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(title),
      onTap: () {
        Navigator.of(context)
            .push(MaterialPageRoute(builder: (context) => page));
      },
    );
  }
}




class _widget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ButtonDemo'),
      ),
      body: Container(
        padding: EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[],
            )
          ],
        ),
      ),
    );
  }
}
