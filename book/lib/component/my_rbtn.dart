import 'package:flutter/material.dart';

class MyRaisedButton extends StatelessWidget {
  final MaterialAccentColor _color;
  final Color _textColor;
  final String _title;
  final Function _function;

  MyRaisedButton(this._color, this._textColor, this._title, this._function);

  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      color: _color,
      child: Text(
        _title,
        style: TextStyle(color: _textColor),
      ),
      onPressed: _function,
    );
  }
}
