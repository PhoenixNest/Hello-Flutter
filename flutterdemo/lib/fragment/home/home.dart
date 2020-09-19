import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutterdemo/api/home_request.dart';
import 'package:flutterdemo/fragment/home/childViews/home_list_item.dart';
import 'package:flutterdemo/models/home_model.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home"),
      ),
      body: Center(
        child: HomeContent(),
      ),
    );
  }
}

class HomeContent extends StatefulWidget {
  @override
  _HomeContentState createState() => _HomeContentState();
}

class _HomeContentState extends State<HomeContent> {
  List<Hits> hitsList = [];

  @override
  void initState() {
    super.initState();
    //发送网络请求
    var list = HomeRequest.request();
    setState(() {
      this.hitsList = list;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ListView.builder(
          itemCount: hitsList.length,
          itemBuilder: (BuildContext context, int index) {
            return HomeListItem(hitsList[index]);
          }),
    );
  }
}
