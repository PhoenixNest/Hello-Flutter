import 'package:book/component/my_rbtn.dart';
import 'package:book/pages/echo.dart';
import 'package:book/pages/new.dart';
import 'package:book/pages/tips.dart';
import 'package:flutter/material.dart';

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
            text: ModalRoute
                .of(context)
                .settings
                .arguments,
          );
        }
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
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              "Hit Times: $_number",
              style: TextStyle(fontSize: 24),
            ),
            SizedBox(
              height: 16,
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
          ],
        ),
      ),
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
