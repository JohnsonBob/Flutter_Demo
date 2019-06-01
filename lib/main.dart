import 'package:flutter/material.dart';

import 'demo/MyListView.dart';
import 'model/post.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
    @override
    Widget build(BuildContext context) {
        return MaterialApp(
            debugShowCheckedModeBanner: false,
            home: Home(),
            theme: ThemeData(
                primarySwatch: Colors.yellow
            ),
        );
    }
}

class Home extends StatelessWidget {
    @override
    Widget build(BuildContext context) {
        return Scaffold(
            backgroundColor: Colors.grey[100],
            appBar: AppBar(
                title: Text('JohnsonLists'),
                elevation: 20.0,
                leading: IconButton(
                    icon: Icon(Icons.menu),
                    tooltip: 'Navigration',
                    onPressed: ()=> debugPrint('Navigration is on pressed')
                ),
            ),
            body: MyListView(),
        );
    }

}





