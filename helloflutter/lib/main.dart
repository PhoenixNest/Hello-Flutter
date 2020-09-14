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
    return Text.rich(
      TextSpan(children: [
        TextSpan(
            text: "Text1",
            style: TextStyle(
                fontSize: 56,
                fontWeight: FontWeight.bold,
                color: Colors.redAccent)),
        TextSpan(
            text: "Text2Text2",
            style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
                color: Colors.green)),
        TextSpan(
            text: "Text3Text3Text3",
            style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.bold,
                color: Colors.blue)),
        TextSpan(
            text: "Text4Text4Text4Text4",
            style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.bold,
                color: Colors.orange))
      ]),
      textAlign: TextAlign.center,
    );
  }
}

// class TextDemo extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Text(
//       "Test Text \n\n Test Text, Test Text, Test Text, Test Text",
//       style: TextStyle(fontSize: 24, color: Colors.orange),
//       textAlign: TextAlign.center,
//       // 最大显示行数: maxLines
//       // maxLines: 2,
//       // 超出部分显示方式: overflow
//       // overflow: TextOverflow.ellipsis,
//       // 缩放倍数: textScaleFactor
//       // textScaleFactor: 2,
//     );
//   }
// }
