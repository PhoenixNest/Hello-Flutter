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
    return NetWorkImageDemo();
  }
}

class NetWorkImageDemo extends StatelessWidget {
  final String imageUrl =
      "https://www.apple.com/v/apple-events/home/h/images/overview/past-events/march-2019/hero_image__dcnw5e2nomye_small_2x.jpg";

  @override
  Widget build(BuildContext context) {
    // return Image.asset("assets/images/wedding-3099197.jpg");

    return Center(
        child: Container(
            height: 360,
            width: 360,
            child: Image.network(imageUrl,
                // repeat: ImageRepeat.repeatY,
                fit: BoxFit.cover)));
  }
}

/// Widget - CustomButtonDemo
// class CustomButtonDemo extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Center(
//       child: RaisedButton(
//         /// 圆角: RoundedRectangleBorder
//         shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
//         color: Colors.blueAccent,
//         child: Row(
//           mainAxisSize: MainAxisSize.min,
//           children: <Widget>[
//             Icon(
//               Icons.adb,
//               color: Colors.white,
//             ),
//             SizedBox(width: 12),
//             Text(
//               "CustomRaisedButton",
//               style: TextStyle(color: Colors.white),
//             ),
//           ],
//         ),
//         onPressed: () {
//           print("CustomRaisedButton");
//         },
//       ),
//     );
//   }
// }

/// Widget - Button
// class ButtonDemo extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       children: <Widget>[
//         RaisedButton(
//           child: Text("RaisedButton"),
//           onPressed: () {
//             print("RaisedButton");
//           },
//         ),
//         FlatButton(
//           onPressed: () {
//             print("FlatButton");
//           },
//           child: Text("FlatButton"),
//         ),
//         FloatingActionButton(
//           child: Text("FloatingActionButton"),
//           onPressed: () {
//             print("FloatingActionButton");
//           },
//         ),
//         OutlineButton(
//           child: Text("OutlineButton"),
//           onPressed: () {
//             print("OutlineButton");
//           },
//         ),
//       ],
//     );
//   }
// }

/// Widget - Text.RichText
// class TextRichDemo extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Text.rich(
//       TextSpan(children: [
//         TextSpan(
//             text: "Text1",
//             style: TextStyle(
//                 fontSize: 56,
//                 fontWeight: FontWeight.bold,
//                 color: Colors.redAccent)),
//         TextSpan(
//             text: "Text2Text2",
//             style: TextStyle(
//                 fontSize: 28,
//                 fontWeight: FontWeight.bold,
//                 color: Colors.green)),
//         TextSpan(
//             text: "Text3Text3Text3",
//             style: TextStyle(
//                 fontSize: 14, fontWeight: FontWeight.bold, color: Colors.blue)),
//         TextSpan(
//             text: "Text4Text4Text4Text4",
//             style: TextStyle(
//                 fontSize: 14,
//                 fontWeight: FontWeight.bold,
//                 color: Colors.orange))
//       ]),
//       textAlign: TextAlign.center,
//     );
//   }
// }

/// Widget - Text
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
