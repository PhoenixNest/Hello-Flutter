import 'package:book/component/my_rbtn.dart';
import 'package:book/pages/echo.dart';
import 'package:book/pages/new.dart';
import 'package:book/pages/tips.dart';
import 'package:book/widget/book_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Book Demo",
      //将MyApp作为应用首页时添加下列属性，该属性决定应用的初始路由页是哪一个命名路由
      initialRoute: "/",
      //注册路由表
      routes: {
        //注册首页路由
        "/": (context) => HomePage(),
        "new_page": (context) => NewRoute(),
        "echo_page": (context) => EchoRoute(),
        "open_tips_page": (context) => OpenTipsRoute(),
        "tips_page": (context) {
          return TipsRoute(
            text: ModalRoute.of(context).settings.arguments,
          );
        },
        "image_demo": (context) => ImageDemo(),
      },
      // onGenerateRoute: (RouteSettings settings) {
      //   return MaterialPageRoute(builder: (context) {
      //     String routeName = settings.name;
      //   });
      // },
      //在使用路由表时，无需指定home属性
      // home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _HomepageState();
  }
}

class _HomepageState extends State<HomePage> {
  int _number = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home Demo"),
      ),
      body: Content(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            _number++;
          });
          print("fb Press, current num: $_number");
        },
        child: Icon(Icons.add),
      ),
    );
  }
}

class Content extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      alignment: Alignment.topCenter,
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            // Text(
            //   "Hit Times: $_number",
            //   style: TextStyle(fontSize: 24),
            // ),
            SizedBox(
              height: 32.0,
            ),
            ClipRRect(
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(16.0),
                  topRight: Radius.zero,
                  bottomLeft: Radius.zero,
                  bottomRight: Radius.circular(16.0)),
              child: Container(
                color: Colors.blueAccent,
                padding: EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
                child: Text(
                  "--- Route ---",
                  style: TextStyle(
                      fontSize: 36,
                      color: Colors.white,
                      fontStyle: FontStyle.italic),
                ),
              ),
            ),
            SizedBox(
              height: 32.0,
            ),
            MyRaisedButton(Colors.blueAccent, Colors.white, "Open New page",
                () {
              Navigator.pushNamed(context, "new_page");
              //打开新的Pages，类似Android中通过Navigation打开新的Fragment
              // Navigator.push(context, MaterialPageRoute(builder: (context){
              //   return OpenTipsRoute();
              // }));
            }),
            MyRaisedButton(
                Colors.redAccent, Colors.white, "Open First Tips page", () {
              Navigator.of(context).pushNamed("open_tips_page");
            }),
            MyRaisedButton(
                Colors.deepPurpleAccent, Colors.white, "Open Tips page", () {
              Navigator.of(context).pushNamed("tips_page",
                  arguments: "This is the message from Home to Tips");
            }),
            MyRaisedButton(Colors.amberAccent, Colors.black, "Open Echo page",
                () {
              Navigator.of(context).pushNamed("echo_page",
                  arguments: "This is the message from Home to Echo");
            }),
            SizedBox(
              height: 32.0,
            ),
            ClipRRect(
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(16.0),
                  topRight: Radius.zero,
                  bottomLeft: Radius.zero,
                  bottomRight: Radius.circular(16.0)),
              child: Container(
                color: Colors.blueAccent,
                padding: EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
                child: Text(
                  "--- Widget ---",
                  style: TextStyle(
                      fontSize: 36,
                      color: Colors.white,
                      fontStyle: FontStyle.italic),
                ),
              ),
            ),
            SizedBox(
              height: 32.0,
            ),
            MyRaisedButton(
                Colors.orangeAccent, Colors.white, "Image", () {
              Navigator.of(context).pushNamed("image_demo");
            }),
          ],
        ),
      ),
    );
  }
}
