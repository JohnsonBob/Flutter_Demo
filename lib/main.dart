import 'package:flutter/material.dart';

import 'model/post.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
    @override
    Widget build(BuildContext context) {
        return MaterialApp(
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
            appBar: AppBar(
                title: Text('JohnsonLists'),
                elevation: 10.0,
            ),
            body: ListView.builder(
                itemCount: posts.length,
                itemBuilder: _listItemBulider
            ),
        );
    }

    Widget _listItemBulider(BuildContext context, int index) {
        return Container(
            color: Colors.white,
            margin: EdgeInsets.all(8.0),
            child: Column(
                children: <Widget>[
                    Image.network(posts[index].imageUrl),
                    Text(posts[index].title)
                ],
            ),
        );
    }

}



