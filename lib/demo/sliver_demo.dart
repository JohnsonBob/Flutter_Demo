import 'package:flutter/material.dart';
import 'package:flutter_app_demo/model/post.dart';

/**
 * @Description TODO
 * @Author JohnsonMac
 * @Date 2019-06-15 23:41
 */


class SliverDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
//            title: Text('NIHAO'),
//            pinned: true,   //固定标题在顶部
            floating: true,
            expandedHeight: 178.0, //标题栏伸展高度

            flexibleSpace: FlexibleSpaceBar(
              title: Text(
                'Ninhao Flutter'.toUpperCase(),
                style: TextStyle(
                    fontSize: 15.0,
                    letterSpacing: 3.0, //设置字体间距
                    fontWeight: FontWeight.w400
                ),
              ),
              centerTitle: true,
              background: Image.network(
                'https://resources.ninghao.org/images/overkill.png',
                fit: BoxFit.cover,
              ),
            ),

          ),

          SliverSafeArea(sliver: SliverPadding(
            padding: EdgeInsets.all(8.0),
            sliver: SliverListDemo(),
          ),),

        ],
      ),
    );
  }
}

class SliverGridDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SliverGrid(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisSpacing: 10.0,
          crossAxisSpacing: 10.0,
          childAspectRatio: 16 / 9
      ),
      delegate: SliverChildBuilderDelegate(
          _sliverChildBuilder,
          childCount: posts.length
      ),
    );
  }

  Widget _sliverChildBuilder(BuildContext context, int index) {
    return Container(
      child: Image.network(
        posts[index].imageUrl,
        fit: BoxFit.cover,
      ),
    );
  }

}


class SliverListDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate(
            (BuildContext context, int index) {
          return Padding(
            padding: EdgeInsets.only(bottom: 32.0),
            child: Material(
              borderRadius: BorderRadius.circular(12.0),
              elevation: 14.0,
              shadowColor: Colors.grey.withOpacity(0.5),
              child: Stack(
                children: <Widget>[
                  AspectRatio(
                    aspectRatio: 16 / 9,
                    child: Image.network(
                      posts[index].imageUrl,
                      fit: BoxFit.cover,
                    ),
                  ),
                  Positioned(
                    top: 32.0,
                    left: 32.0,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          posts[index].title,
                          style: TextStyle(
                              fontSize: 20.0,
                              color: Colors.white
                          ),
                        ),
                        Text(
                          posts[index].author,
                          style: TextStyle(
                              fontSize: 13.0,
                              color: Colors.white
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          );
        },
        childCount: posts.length,
      ),
    );
  }
}
