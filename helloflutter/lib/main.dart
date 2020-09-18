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
              autovalidate: true,
              decoration: InputDecoration(
                  icon: Icon(Icons.people), labelText: "Input userName"),
              onSaved: (v) {
                this.userName = v;
                print("userName onSave");
              },
              //验证输入框内容是否合法
              validator: (v) {
                if (v.length == null || v.length == 0) {
                  //未监测到输入，并提示信息
                  return "Please input userName";
                }
                //验证通过，不提示信息
                return null;
              },
            ),
            TextFormField(
              autovalidate: true,
              // 密文输入
              obscureText: true,
              decoration: InputDecoration(
                  icon: Icon(Icons.lock), labelText: "Input passWord"),
              onSaved: (v) {
                this.passWord = v;
                print("passWord onSave");
              },
              //验证输入框内容是否合法
              validator: (v) {
                if (v.length == null || v.length == 0) {
                  //未监测到输入，并提示信息
                  return "Please input passWord";
                }
                //验证通过，不提示信息
                return null;
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
                  //通过下述方法验证输入框输入内容是否合法，当TextFormField开启了autovalidate时，可以进行自动验证输入，此时可省去下述方法
                  // globalKey.currentState.validate();
                  print("userName: $userName --- password: $passWord");
                },
                child: Text(
                  "Login",
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
