import 'package:flutter/material.dart';

/**
 * @ClassName dsfa
 * @Description TODO
 * @Author JohnsonMac
 * @Date 2019-06-08 17:36
 */
class BottomNavigationBarDemo extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return BottomNavigationBarDemoState();
  }

}

class BottomNavigationBarDemoState extends State<BottomNavigationBarDemo> {
  int _currentIndex = 0;

  void _onTapHandler(int value) {
//    _currentIndex = value;
    setState(() {
      _currentIndex = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: _currentIndex,
        fixedColor: Colors.black,
        onTap: _onTapHandler,
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.explore),
              title: Text('Explore')
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.history),
              title: Text('History')
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.list),
              title: Text('List')
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.people),
              title: Text('People')
          ),
        ]
    );
  }
}