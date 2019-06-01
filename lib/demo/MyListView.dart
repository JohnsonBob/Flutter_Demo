import 'package:flutter/material.dart';
import 'package:flutter_app_demo/model/post.dart';

class MyListView extends StatelessWidget {
    @override
    Widget build(BuildContext context) {
        return ListView.builder(
            itemCount: posts.length,
            itemBuilder: _listItemBulider
        );
    }

    Widget _listItemBulider(BuildContext context, int index) {
        return Container(
            color: Colors.white,
            margin: EdgeInsets.all(8.0),
            child: Column(
                children: <Widget>[
                    Image.network(posts[index].imageUrl),
                    SizedBox(height: 16),
                    Text(
                        posts[index].title,
                        style: Theme
                            .of(context)
                            .textTheme
                            .title,
                    ),
                    Text(
                        posts[index].author,
                        style: Theme
                            .of(context)
                            .textTheme
                            .subhead,
                    ),
                    SizedBox(height: 16),

                ],
            ),
        );
    }

}