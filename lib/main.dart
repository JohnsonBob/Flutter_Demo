import 'package:flutter/material.dart';
import 'demo/basic_demo.dart';

import 'demo/MyListView.dart';
import 'demo/botton_navigation_bar_damo.dart';
import 'demo/navigation_demo.dart';
import 'demo/sliver_demo.dart';
import 'demo/view_demo.dart';
import 'model/post.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Home(),
//      initialRoute: '/',
      routes: ({
//        '/': (context) => NavigationDemo(),
        '/about': (context) => Page(title: 'about',)
      }),
      theme: ThemeData(
          primarySwatch: Colors.yellow,
          //水波纹效果
          highlightColor: Color.fromRGBO(255, 255, 255, 0.5),
          splashColor: Colors.white70),
    );
  }
}

class Home extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        backgroundColor: Colors.grey[100],
        appBar: AppBar(
          title: Text('JohnsonLists'),
          elevation: 0.0,
          actions: <Widget>[
            IconButton(
                icon: Icon(Icons.search),
                tooltip: 'Search',
                onPressed: () => debugPrint('Search is on pressed'))
          ],
          bottom: TabBar(
            tabs: [
              Tab(
                icon: Icon(Icons.local_florist),
              ),
              Tab(
                icon: Icon(Icons.change_history),
              ),
              Tab(
                icon: Icon(Icons.directions_bike),
              ),
              Tab(
                icon: Icon(Icons.view_quilt),
              )
            ],
            unselectedLabelColor: Colors.black38,
            indicatorColor: Colors.black,
            indicatorSize: TabBarIndicatorSize.label,
            indicatorWeight: 1.0,
          ),
        ),
        body: TabBarView(children: [
          MyListView(),
          /*Icon(
            Icons.change_history,
            size: 128.0,
            color: Colors.black12,
          ),*/
          BasicDemo(),
          Icon(
            Icons.directions_bike,
            size: 128.0,
            color: Colors.black12,
          ),
          ViewDemo(),
        ]),
        drawer: Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: <Widget>[
              UserAccountsDrawerHeader(
                accountName: Text(
                  'Johnson',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                accountEmail: Text('1306305502@qq.com'),
                currentAccountPicture: CircleAvatar(
                  backgroundImage: NetworkImage(
                      'https://resources.ninghao.org/images/wanghao.jpg'),
                ),
                decoration: BoxDecoration(
                    color: Colors.yellow[100],
                    image: DecorationImage(
                        image: NetworkImage(
                            'https://resources.ninghao.org/images/childhood-in-a-picture.jpg'),
                        fit: BoxFit.cover,
                        colorFilter: ColorFilter.mode(
                            Colors.yellow[400].withOpacity(0.6),
                            BlendMode.hardLight
                        )
                    )
                ),
              ),
              ListTile(
                title: Text(
                  'Message',
                  textAlign: TextAlign.right,
                ),
                trailing: Icon(
                  Icons.message,
                  color: Colors.black12,
                  size: 22.0,
                ),
                onTap: () => Navigator.pop(context),
              ),
              ListTile(
                title: Text(
                  'Savorite',
                  textAlign: TextAlign.right,
                ),
                trailing: Icon(
                  Icons.favorite,
                  color: Colors.black12,
                  size: 22.0,
                ),
                onTap: () => Navigator.pop(context),
              ),
              ListTile(
                title: Text(
                  'Setting',
                  textAlign: TextAlign.right,
                ),
                trailing: Icon(
                  Icons.settings,
                  color: Colors.black12,
                  size: 22.0,
                ),
                onTap: () => Navigator.pop(context),
              ),
            ],
          ),
        ),
        bottomNavigationBar: BottomNavigationBarDemo(),
      ),
    );
  }

}


