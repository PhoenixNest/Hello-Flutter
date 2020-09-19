import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutterdemo/api/http_config.dart';
import 'package:flutterdemo/api/http_request.dart';
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
    HttpRequest.request(BASE_URL,
        params: {"orientation": "all", "editors_choice": true}).then((value) {
      List<Hits> hits = [];
      var data = value.data["hits"];
      for (var hit in data) hits.add(Hits.fromJson(hit));

      setState(() {
        this.hitsList = hits;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ListView.builder(
          itemCount: hitsList.length,
          itemBuilder: (BuildContext context, int index) {
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: ListTile(
                leading: Image.network(hitsList[index].userImageURL),
                title: Text(hitsList[index].user),
              ),
            );
          }),
    );
  }
}
