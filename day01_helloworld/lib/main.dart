import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: "Hello World",
        home: Scaffold(
          appBar: AppBar(
            title: Text("Apple Dev Center"),
          ),
          body: ContentWidget(),
        ));
  }
}

class ContentWidget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return ContentWidgetState();
  }
}

class ContentWidgetState extends State<ContentWidget> {
  int currentNum = 0;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              RaisedButton(
                child: Text("+1"),
                onPressed: () {
                  print("Press");
                  // 监听状态改变
                  setState(() {
                    currentNum++;
                  });
                },
              ),
              SizedBox(width: 10),
              RaisedButton(
                child: Text("-1"),
                onPressed: () {
                  print("Press");
                  // 监听状态改变
                  setState(() {
                    currentNum--;
                  });
                },
              ),
            ],
          ),
          Text(
            "当前计数: $currentNum",
            style: TextStyle(fontSize: 24),
          ),
        ],
      ),
    );
  }
}
