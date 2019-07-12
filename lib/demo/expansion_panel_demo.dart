import 'package:flutter/material.dart';
import "package:intl/intl.dart";

class ExpansionPanelItme {
  String headerText;
  Widget body;
  bool isExpanded;

  ExpansionPanelItme({this.headerText, this.body, this.isExpanded});
}

class ExpansionPanelDemo extends StatefulWidget {
  @override
  _ExpansionPanelDemoState createState() => _ExpansionPanelDemoState();
}

class _ExpansionPanelDemoState extends State<ExpansionPanelDemo> {
  List<ExpansionPanelItme> _expansionPanelItmes;

  @override
  void initState() {
    super.initState();
    _expansionPanelItmes = [
      ExpansionPanelItme(
          headerText: 'Panel A',
          body: Container(
            padding: EdgeInsets.all(12),
            width: double.infinity,
            child: Text('Content for Panel A'),
          ),
          isExpanded: false),
      ExpansionPanelItme(
          headerText: 'Panel B',
          body: Container(
            padding: EdgeInsets.all(12),
            width: double.infinity,
            child: Text('Content for Panel B'),
          ),
          isExpanded: false),
      ExpansionPanelItme(
          headerText: 'Panel C',
          body: Container(
            padding: EdgeInsets.all(12),
            width: double.infinity,
            child: Text('Content for Panel C'),
          ),
          isExpanded: false),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ExpansionPanelDemo'),
      ),
      body: Container(
        padding: EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ExpansionPanelList(
              expansionCallback: (int panelIndex, bool isExpanded) {
                setState(() {
                  _expansionPanelItmes[panelIndex].isExpanded = !isExpanded;
                });
              },
              children: _expansionPanelItmes.map((item) {
                return ExpansionPanel(
                  headerBuilder: (BuildContext context, bool isExpanded) {
                    return Container(
                      padding: EdgeInsets.all(12),
                      child: Text(
                        item.headerText,
                        style: Theme.of(context).textTheme.title,
                      ),
                    );
                  },
                  body: item.body,
                  isExpanded: item.isExpanded,
                );
              }).toList(),
            ),
          ],
        ),
      ),
    );
  }
}
