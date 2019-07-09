import 'package:flutter/material.dart';

class FromDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Theme(
        data: Theme.of(context).copyWith(primaryColor: Colors.black),
        child: Container(
          padding: EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              RegistFromeState(),
            ],
          ),
        ),
      ),
    );
  }
}

class RegistFromeState extends StatefulWidget {
  @override
  _RegistFromeStateState createState() => _RegistFromeStateState();
}

class _RegistFromeStateState extends State<RegistFromeState> {
  final registFromKey = GlobalKey<FormState>();
  String username,password;
  var isautovalidate = false;

  @override
  Widget build(BuildContext context) {
    return Form(
      key: registFromKey,
      child: Column(
        children: <Widget>[
          TextFormField(
            decoration: InputDecoration(
              hintText: 'input username',
              labelText: 'Username',
              helperText: '',
            ),
            onSaved: (value){
              username = value;
            },
            validator: validatotUsername,
            autovalidate: isautovalidate,
          ),
          TextFormField(
            obscureText: true,
            decoration: InputDecoration(
              hintText: 'input password',
              labelText: 'Password',
              helperText: '',
            ),
            onSaved: (value){
              password = value;
            },
            validator: validatotPassword,
            autovalidate: isautovalidate,
          ),
          SizedBox(
            height: 32.0,
          ),
          Container(
            width: double.infinity,
            child: RaisedButton(
              onPressed: submitRegistFrom,
              color: Colors.blue,
              elevation: 0.0,
              child: Text('Rgister', style:TextStyle(color: Colors.white),),
            ),
          )
        ],
      ),
    );
  }

  void submitRegistFrom() {

    //第一次验证表单失败后启动自动验证
    if(registFromKey.currentState.validate()){
      registFromKey.currentState.save();
      debugPrint('username: $username, password: $password');

      Scaffold.of(context).showSnackBar(SnackBar(content: Text('Regist...')));
    }else{
      setState(() {
        isautovalidate = true;
      });
    }
  }

  String validatotUsername(String value) {
    if(value.isEmpty){
      return 'Username is required';
    }
  }

  String validatotPassword(String value) {
    if(value.isEmpty){
      return 'Password is required';
    }
  }
}

/**
 * TextFieldDemod
 */
class TextFieldDemo extends StatefulWidget {
  @override
  _TextFieldDemoState createState() => _TextFieldDemoState();
}

class _TextFieldDemoState extends State<TextFieldDemo> {
  @override
  Widget build(BuildContext context) {
    return TextField(
      onChanged: (value) {
        debugPrint(value);
      },
      onSubmitted: (value) {
        debugPrint(value);
      },
      decoration: InputDecoration(
        icon: Icon(Icons.subject),
        labelText: 'title',
        hintText: 'Enter the post title',
//          border: InputBorder.none  // 无边框
//      border: OutlineInputBorder()
        filled: true,
        //是否有背景
        fillColor: Colors.indigoAccent,
      ),
    );
  }
}

class ThemeDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Theme.of(context).primaryColor,
    );
  }
}
