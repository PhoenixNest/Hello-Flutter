import 'package:flutter/material.dart';
import 'components/bnb_item.dart';
import 'fragment/category/category.dart';
import 'fragment/cloud/cloud.dart';
import 'fragment/home/home.dart';
import 'fragment/test/test.dart';

import 'fragment/paints/paints.dart';

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
      bottomNavigationBar: BottomNavigationBar(
        //监听当前选中的Item
        currentIndex: _currentIndex,
        //选中时的字体大小
        selectedFontSize: 16,
        //未选中时的字体大小
        unselectedFontSize: 14,
        //设置默认样式
        type: BottomNavigationBarType.fixed,
        items: [
          MyBottomNavigationBarItem(Icons.home, "Home"),
          MyBottomNavigationBarItem(Icons.category, "Category"),
          MyBottomNavigationBarItem(Icons.cloud_circle, "Cloud"),
          MyBottomNavigationBarItem(Icons.clear_all, "Test"),
          MyBottomNavigationBarItem(Icons.color_lens, "Paints")
        ],
        onTap: (int index) {
          //通过onTap方法对BottomNavigationBar的选中Item进行监听，并赋值给一个制定变量，籍由currentIndex属性进行切换
          //此处需要通过setState进行赋值
          setState(() {
            _currentIndex = index;
          });
        },
      ),
      //ViewPager + Fragment
      body: IndexedStack(
        //通过index选中对应的Fragment
        index: _currentIndex,
        children: <Widget>[Home(), Category(), Cloud(), Test(), Paints()],
      ),
    );
  }
}
