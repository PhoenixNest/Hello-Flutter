import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/widgets.dart';
import 'package:flutterdemo/models/home_model.dart';

class HomeListItem extends StatelessWidget {
  final Hits items;

  HomeListItem(this.items);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black54,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[_CardLayout(items)],
      ),
    );
  }
}

class _CardLayout extends StatelessWidget{
  final Hits items;

  _CardLayout(this.items);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(8.0),
      child: ClipRRect(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(16.0),
            topRight: Radius.zero,
            bottomLeft: Radius.zero,
            bottomRight: Radius.circular(16.0)
          ),
          child: _CardLayoutItem(items)),
    );
  }
}

class _CardLayoutItem extends StatelessWidget{
  final Hits items;

  _CardLayoutItem(this.items);

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: AlignmentDirectional.bottomCenter,
      children: <Widget>[
        Container(child: Image.network(items.webformatURL)),
        Positioned(
          right: 16.0,
            bottom: 48.0,
            child: Container(
              height: 72.0,
                width: 72.0,
                child: ClipRRect(
borderRadius: BorderRadius.circular(16.0),
                    child: Image.network(items.userImageURL)))),
        Positioned(
          right: 24.0,
          bottom: 16.0,
          child: Container(
              child: Text(items.user,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                    fontStyle: FontStyle.italic,
                    fontSize: 18.0,
                    color: Colors.white
                ),)),
        )
      ],
    );
  }

}