import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Youtube',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String text = "";

  void changeText(String text) {
    setState(() {
      this.text = text;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Youtube"),
      ),
      body: Column(
        children: <Widget>[
          TextInputWidget(
            callback: changeText,
          ),
          Text(this.text)
        ],
      ),
    );
  }
}

class TextInputWidget extends StatefulWidget {
  final Function(String) callback;

  const TextInputWidget({this.callback});

  @override
  _TextInputWidgetState createState() => _TextInputWidgetState();
}

class _TextInputWidgetState extends State<TextInputWidget> {
  TextEditingController _editingController = TextEditingController();
  String text = "";

  @override
  void dispose() {
    super.dispose();
    _editingController.dispose();
  }

  void changeText(String text) {
    if (text == "Hello World") {
      _editingController.clear();
      text = "";
    }

    setState(() {
      this.text = text;
    });
  }

  void click() {
    widget.callback(_editingController.text);
    _editingController.clear();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        TextField(
          controller: this._editingController,
          decoration: InputDecoration(
            prefixIcon: Icon(Icons.message),
            suffixIcon: IconButton(
              icon: Icon(Icons.send),
              tooltip: "Post message",
              splashColor: Colors.blue,
              onPressed: this.click,
            ),
            labelText: "Type a message",
          ),
          onChanged: (text) {
            this.changeText(text);
          },
        ),
        Text(this.text),
      ],
    );
  }
}
