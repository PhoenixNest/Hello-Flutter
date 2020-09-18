import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: "Hello World",
        home: Scaffold(
            appBar: AppBar(
              title: Text("Dev Center"),
            ),
            body: ContentWidget()));
  }
}

class ContentWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return FormDemo();
  }
}

class FormDemo extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return myFormState();
  }
}

///表单
class myFormState extends State<FormDemo> {
  String userName;
  String passWord;

  //统一管理TextFormField中的状态，以便于接受输入内容并统一提交
  GlobalKey<FormState> globalKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Form(
        key: globalKey,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            TextFormField(
              decoration: InputDecoration(
                  icon: Icon(Icons.people), labelText: "Input userName"),
              onSaved: (v) {
                this.userName = v;
                print("userName onSave");
              },
            ),
            TextFormField(
              // 密文输入
              obscureText: true,
              decoration: InputDecoration(
                  icon: Icon(Icons.lock), labelText: "Input passWord"),
              onSaved: (v) {
                this.passWord = v;
                print("passWord onSave");
              },
            ),
            SizedBox(height: 16),
            Container(
              width: double.infinity,
              height: 36,
              child: RaisedButton(
                color: Colors.blue,
                onPressed: () {
                  print("onPress");
                  //通过下述方法统一接受输入框的值
                  globalKey.currentState.save();
                  print("userName: $userName --- password: $passWord");
                },
                child: Text(
                  "Register",
                  style: TextStyle(color: Colors.white, fontSize: 16),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
