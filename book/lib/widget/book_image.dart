import 'package:flutter/material.dart';

class ImageDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    String img = "https://avatars3.githubusercontent.com/u/1609975?v=3&s=280";

    return Scaffold(
      appBar: AppBar(
        title: Text("ImageDemo"),
      ),
      body: SingleChildScrollView(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Image>[
              Image.network(
                img,
                height: 50.0,
                width: 100.0,
                fit: BoxFit.fill,
              ),
              Image.network(
                img,
                height: 50,
                width: 50.0,
                fit: BoxFit.contain,
              ),
              Image.network(
                img,
                width: 100.0,
                height: 50.0,
                fit: BoxFit.cover,
              ),
              Image.network(
                img,
                width: 100.0,
                height: 50.0,
                fit: BoxFit.fitWidth,
              ),
              Image.network(
                img,
                width: 100.0,
                height: 50.0,
                fit: BoxFit.fitHeight,
              ),
              Image.network(
                img,
                width: 100.0,
                height: 50.0,
                fit: BoxFit.scaleDown,
              ),
              Image.network(
                img,
                height: 50.0,
                width: 100.0,
                fit: BoxFit.none,
              ),
              Image.network(
                img,
                width: 100.0,
                color: Colors.blue,
                colorBlendMode: BlendMode.difference,
                fit: BoxFit.fill,
              ),
              Image.network(
                img,
                width: 100.0,
                height: 200.0,
                repeat: ImageRepeat.repeatY,
              )
            ].map((element) {
              return Row(
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.all(16.0),
                    child: SizedBox(
                      width: 100,
                      child: element,
                    ),
                  ),
                  Text(element.fit.toString())
                ],
              );
            }).toList()),
      ),
    );
  }
}
