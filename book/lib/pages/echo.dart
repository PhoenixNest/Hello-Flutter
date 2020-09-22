import 'package:flutter/material.dart';

class EchoRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //接收调用该命名路由时所传递的参数
    var _config = ModalRoute.of(context).settings.arguments;
    print(_config);

    return Scaffold(
      appBar: AppBar(
        title: Text("Echo"),
      ),
      body: Center(
        child: Text(
          "EchoRoute",
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}
