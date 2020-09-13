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
          body: Content(),
        ));
  }
}

class Content extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(10),
      child: ListView(
        children: <Widget>[
          Item("Apple 1", "Dev Center",
              "https://n.sinaimg.cn/spider2020913/372/w750h422/20200913/2d1a-iyywcta1136728.jpg"),
          Item("Apple 2", "Dev Center",
              "https://n.sinaimg.cn/spider2020913/449/w750h499/20200913/cc28-iyywcta1136729.jpg"),
          Item("Apple 3", "Dev Center",
              "https://n.sinaimg.cn/spider2020913/372/w750h422/20200913/e13f-iyywcta1136773.jpg"),
        ],
      ),
    );
  }
}

class Item extends StatelessWidget {
  final String title;
  final String type;
  final String imageUrl;

  Item(this.title, this.type, this.imageUrl);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(2),
      decoration: BoxDecoration(border: Border.all(width: 2)),
      child: Column(
        children: <Widget>[
          Text(
            title,
            style: TextStyle(fontSize: 24),
          ),
          Text(type, style: TextStyle(fontSize: 18)),
          SizedBox(
            height: 10,
          ),
          Image.network(imageUrl),
        ],
      ),
    );
  }
}
