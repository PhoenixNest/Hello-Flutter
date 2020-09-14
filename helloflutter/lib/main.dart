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
          body: ContentWidget(),
        ));
  }
}

/// 生命周期函数调用顺序：
/// (1). Widget构造函数 ->
/// (2). Widget - createState ->
/// (3). WidgetState - 构造函数 ->
/// (4). WidgetState - initState ->
/// (5). WidgetState - didChangeDependencies ->
/// (6). WidgetState - build ->
/// (7). (如果对页面元素进行改变则会重新调用build方法) WidgetState - build ->

class ContentWidget extends StatefulWidget {
  ContentWidget() {
    print("ContentWidget构造函数");
  }

  @override
  State<StatefulWidget> createState() {
    print("ContentWidget - createState");
    return ContentWidgetState();
  }
}

class ContentWidgetState extends State<ContentWidget> {
  int currentNum = 0;

  ContentWidgetState() {
    print("ContentWidgetState构造函数");
  }

  @override
  void initState() {
    // 父类种可能调用的方法
    super.initState();

    print("ContentWidgetState - initState");
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    print("ContentWidgetState - didChangeDependencies");
  }

  @override
  Widget build(BuildContext context) {
    print("ContentWidgetState - build");

    return Center(
      child: Column(
        children: <Widget>[
          RaisedButton(
            child: Text("+1"),
            onPressed: () {
              setState(() {
                currentNum++;
              });
            },
          ),
          Text(
            "Count: $currentNum",
            style: TextStyle(fontSize: 24),
          ),
        ],
      ),
    );
  }

  @override
  void didUpdateWidget(ContentWidget oldWidget) {
    super.didUpdateWidget(oldWidget);
    print("ContentWidgetState - didUpdateWidget");
  }
}
