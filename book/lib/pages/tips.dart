import 'package:flutter/material.dart';

class OpenTipsRoute extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Open Tips Page"),
      ),
      body: Center(
        child: RaisedButton(
          onPressed: () async {
            var result = await Navigator.push(context,MaterialPageRoute(builder: (context){
              return TipsRoute(
                //From OpenTipsRoute To TipsRoute
                text: "This the tip text",
              );
            }));
            print("Route return result: $result");
          },
          child: Text("Open Tips"),
        ),
      ),
    );
  }
}

class TipsRoute extends StatelessWidget{
  final String text ;

  const TipsRoute({Key key,@required this.text}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          children: <Widget>[
            Text(text),
            RaisedButton(
              //Return To OpenTipPageRoute And Send The Value
              onPressed: () => Navigator.pop(context,"This is the return value"),
              child: Text("Return"),
            )
          ],
        ),
      ),
    );
  }
}
