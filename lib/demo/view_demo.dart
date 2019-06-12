import 'package:flutter/material.dart';

class ViewDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return PageViewDemo();
  }


}

class PageViewDemo extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return PageView(
      //滑动到一定距离后松开不会自动到相应页面
//      pageSnapping: false,
      //页面倒置
//    reverse: true,
      //设置滚动方向
//      scrollDirection: Axis.vertical,
      onPageChanged: (currentPage)=> debugPrint('Page: $currentPage'),
      controller: PageController(
        //初始要显示的界面
          initialPage: 1,
          //记住pageview滚到的视图
          keepPage: false,
          //占用可视图的比例 主轴方向
          viewportFraction: 0.8
      ),
      children: <Widget>[
        Container(
          color: Colors.brown[900],
          alignment: Alignment(0, 0),
          child: Text(
            "ONE",
            style:TextStyle(fontSize: 32.0, color: Colors.white),
          ),
        ),
        Container(
          color: Colors.grey[900],
          alignment: Alignment(0, 0),
          child: Text(
            "TWO",
            style:TextStyle(fontSize: 32.0, color: Colors.white),
          ),
        ),
        Container(
          color: Colors.blueGrey[900],
          alignment: Alignment(0, 0),
          child: Text(
            "THREE",
            style:TextStyle(fontSize: 32.0, color: Colors.white),
          ),
        ),
      ],
    );
  }

}

