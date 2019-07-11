import 'package:flutter/material.dart';

import 'button_demo.dart';
import 'checkbox_demo.dart';
import 'floating_action_button_demo.dart';
import 'form_demo.dart';
import 'popup_menu_button_demo.dart';
import 'radio_demo.dart';
import 'switch_demo.dart';

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
          ListItem(title: "From", page: FromDemo()),
          ListItem(
              title: "FloatingActionButton", page: FloatingActionButtonDemo()),
          ListItem(title: "Button", page: ButtonDemo()),
          ListItem(title: "PopupMenuButton", page: PopupMenuButtonDemo()),
          ListItem(title: "CheckBox", page: CheckBoxDemo()),
          ListItem(title: "Radio", page: RadioDemo()),
          ListItem(title: "Switch", page: SwitchDemo()),
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
