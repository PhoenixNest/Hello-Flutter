import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Dev Center",
      theme: ThemeData(
        primaryColor: Colors.deepPurpleAccent,
        //下述两个属性可以取消按钮点击水波纹效果
        highlightColor: Colors.transparent,
        splashColor: Colors.transparent,
      ),
      home: ContentLayout(),
    );
  }
}

class ContentLayout extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return ContentLayoutState();
  }
}

class ContentLayoutState extends State<ContentLayout> {
  //私有变量可参考使用下划线进行命名
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Flutter Demo")),
      bottomNavigationBar: BottomNavigationBar(
        //监听当前选中的Item
        currentIndex: _currentIndex,
        //选中时的字体大小
        selectedFontSize: 16,
        //未选中时的字体大小
        unselectedFontSize: 14,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), title: Text("Home")),
          BottomNavigationBarItem(
              icon: Icon(Icons.category), title: Text("Category"))
        ],
        onTap: (int index) {
          //通过onTap方法对BottomNavigationBar的选中Item进行监听，并赋值给一个制定变量，籍由currentIndex属性进行切换

          //通过setState进行赋值
          setState(() {
            _currentIndex = index;
          });
        },
      ),
      body: Text("Hello World"),
    );
  }
}
