import 'package:flutter/material.dart';

class ButtonDemo extends StatelessWidget {
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
            _flatButtonDemo,
            _raisedButtonDemo(context),
            _outlineButtonDemo(context),
            _utlineButton1,
            _utlineButton2,
            _utlineButton3,
            _utlineButton4,
          ],
        ),
      ),
    );
  }

  final _flatButtonDemo = Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: <Widget>[
      FlatButton(
        child: Text('Button'),
        onPressed: () {},
        splashColor: Colors.grey,
        textColor: Colors.blue,
      ),
      SizedBox(
        width: 16,
      ),
      FlatButton.icon(
        label: Text('Button'),
        onPressed: () {},
        splashColor: Colors.grey,
        textColor: Colors.blue,
        icon: Icon(Icons.add),
      ),
    ],
  );

  Widget _raisedButtonDemo(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Theme(
          data: Theme.of(context).copyWith(
            buttonColor: Colors.blue,
            buttonTheme: ButtonThemeData(
                textTheme: ButtonTextTheme.primary,
                /*shape: BeveledRectangleBorder(
                borderRadius: BorderRadius.circular(4)
              ),*/
                shape: StadiumBorder()),
          ),
          child: RaisedButton(
            child: Text('Button'),
            onPressed: () {},
//        splashColor: Colors.grey,
//        textColor: Colors.white,
            elevation: 0.0,
//            color: Colors.blue,
//            textTheme: ButtonTextTheme.primary,
          ),
        ),
        SizedBox(
          width: 16,
        ),
        RaisedButton.icon(
          label: Text('Button'),
          onPressed: () {},
          splashColor: Colors.grey,
          textColor: Colors.blue,
          icon: Icon(Icons.add),
          elevation: 12,
        ),
      ],
    );
  }

  Widget _outlineButtonDemo(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Theme(
          data: Theme.of(context).copyWith(
            buttonColor: Colors.blue,
            buttonTheme: ButtonThemeData(
                textTheme: ButtonTextTheme.primary,
                /*shape: BeveledRectangleBorder(
                borderRadius: BorderRadius.circular(4)
              ),*/
                shape: StadiumBorder()),
          ),
          child: OutlineButton(
            child: Text('Button'),
            onPressed: () {},
            splashColor: Colors.grey[100],
            borderSide: BorderSide(
                color: Colors.black
            ),
            textColor: Colors.black,
            highlightColor: Colors.grey,
//            color: Colors.blue,
//            textTheme: ButtonTextTheme.primary,
          ),
        ),
        SizedBox(
          width: 16,
        ),
        OutlineButton.icon(
          label: Text('Button'),
          onPressed: () {},
          splashColor: Colors.grey,
          textColor: Colors.blue,
          icon: Icon(Icons.add),
        ),
      ],
    );
  }

  final _utlineButton1 = Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: <Widget>[
      OutlineButton(
        child: Text('Button'),
        onPressed: () {},
        splashColor: Colors.grey[100],
        borderSide: BorderSide(
            color: Colors.black
        ),
        textColor: Colors.black,
        highlightColor: Colors.grey,
//            color: Colors.blue,
//            textTheme: ButtonTextTheme.primary,
      ),
    ],
  );

  final _utlineButton2 = Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: <Widget>[
      Container(
        width: 200,
        child: OutlineButton(
          child: Text('Button'),
          onPressed: () {},
          splashColor: Colors.grey[100],
          borderSide: BorderSide(
              color: Colors.black
          ),
          textColor: Colors.black,
          highlightColor: Colors.grey,
//            color: Colors.blue,
//            textTheme: ButtonTextTheme.primary,
        ),
      ),
    ],
  );

  final _utlineButton3 = Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: <Widget>[
      Expanded(
        child: OutlineButton(
          child: Text('Button'),
          onPressed: () {},
          splashColor: Colors.grey[100],
          borderSide: BorderSide(
              color: Colors.black
          ),
          textColor: Colors.black,
          highlightColor: Colors.grey,
//            color: Colors.blue,
//            textTheme: ButtonTextTheme.primary,
        ),
      ),
    ],
  );

  final _utlineButton4 = Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: <Widget>[
      Expanded(
        child: OutlineButton(
          child: Text('Button'),
          onPressed: () {},
          splashColor: Colors.grey[100],
          borderSide: BorderSide(
              color: Colors.black
          ),
          textColor: Colors.black,
          highlightColor: Colors.grey,
//            color: Colors.blue,
//            textTheme: ButtonTextTheme.primary,
        ),
      ),
      SizedBox(width: 40,),
      Expanded(
        flex: 3,
        child: OutlineButton(
          child: Text('Button'),
          onPressed: () {},
          splashColor: Colors.grey[100],
          borderSide: BorderSide(
              color: Colors.black
          ),
          textColor: Colors.black,
          highlightColor: Colors.grey,
//            color: Colors.blue,
//            textTheme: ButtonTextTheme.primary,
        ),
      ),

    ],
  );
}