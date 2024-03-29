// Copyright 2018-present the Flutter authors. All Rights Reserved.
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
// http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.

// TODO: Convert ShrineApp to stateful widget (104)
import 'package:Shrine/backdrop.dart';
import 'package:Shrine/category_menu_page.dart';
import 'package:Shrine/colors.dart';
import 'package:flutter/material.dart';

import 'home.dart';
import 'login.dart';
import 'model/product.dart';
import 'supplemental/cut_corners_border.dart';

class ShrineApp extends StatefulWidget {
  @override
  _ShrineAppState createState() {
    return _ShrineAppState();
  }
}

class _ShrineAppState extends State<ShrineApp> {
  Category _currentCategory = Category.all;

  void _onCategoryTap(Category category) {
    setState(() {
      _currentCategory = category;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Shrine',
      // TODO: Change home: to a Backdrop with a HomePage frontLayer (104)
      // home: HomePage(),
      home: BackDrop(
        // TODO: Make currentCategory field take _currentCategory (104)
        currentCategory: Category.all,
        // TODO: Pass _currentCategory for frontLayer (104)
        frontLayer: HomePage(
          category: _currentCategory,
        ),
        // TODO: Change backLayer field value to CategoryMenuPage (104)
        backLayer: CategoryMenuPage(
          currentCategory: _currentCategory,
          onCategoryTap: _onCategoryTap,
        ),
        frontTitle: Text("SHRINE"),
        backTitle: Text("MENU"),
      ),
      // TODO: Make currentCategory field take _currentCategory (104)
      // TODO: Pass _currentCategory for frontLayer (104)
      // TODO: Change backLayer field value to CategoryMenuPage (104)
      initialRoute: '/login',
      onGenerateRoute: _getRoute,
      // TODO: Add a theme (103)
      theme: _mShrineTheme,
    );
  }

  Route<dynamic> _getRoute(RouteSettings settings) {
    if (settings.name != '/login') {
      return null;
    }

    return MaterialPageRoute<void>(
      settings: settings,
      builder: (BuildContext context) => LoginPage(),
      fullscreenDialog: true,
    );
  }
}

// TODO: Build a Shrine Theme (103)
final ThemeData _mShrineTheme = _buildShrineTheme();

ThemeData _buildShrineTheme() {
  final ThemeData baseTheme = ThemeData.light();
  return baseTheme.copyWith(
    accentColor: kShrineBrown900,
    primaryColor: kShrinePink100,
    buttonTheme: baseTheme.buttonTheme.copyWith(
      buttonColor: kShrinePink100,
      colorScheme: baseTheme.colorScheme.copyWith(
        secondary: kShrineBrown900,
      ),
    ),
    buttonBarTheme: baseTheme.buttonBarTheme.copyWith(
      buttonTextTheme: ButtonTextTheme.accent,
    ),
    scaffoldBackgroundColor: kShrineBackgroundWhite,
    cardColor: kShrineBackgroundWhite,
    textSelectionColor: kShrinePink100,
    errorColor: kShrineErrorRed,
    // TODO: Add the text themes (103)
    textTheme: _buildShrineTextTheme(baseTheme.textTheme),
    primaryTextTheme: _buildShrineTextTheme(baseTheme.primaryTextTheme),
    accentTextTheme: _buildShrineTextTheme(baseTheme.accentTextTheme),
    // TODO: Add the icon themes (103)
    primaryIconTheme: baseTheme.iconTheme.copyWith(color: kShrineBrown900),
    // TODO: Decorate the inputs (103)
    inputDecorationTheme: InputDecorationTheme(
      focusedBorder: CutCornersBorder(
        borderSide: BorderSide(
          width: 2.0,
          color: kShrineBrown900,
        ),
      ),
      border: CutCornersBorder(),
    ),
  );
}

// TODO: Build a Shrine Text Theme (103)
TextTheme _buildShrineTextTheme(TextTheme baseTheme) {
  return baseTheme
      .copyWith(
          headline5: baseTheme.headline5.copyWith(
            fontWeight: FontWeight.w500,
          ),
          headline6: baseTheme.headline6.copyWith(
            fontSize: 18.0,
          ),
          caption: baseTheme.caption.copyWith(
            fontWeight: FontWeight.w400,
            fontSize: 14.0,
          ))
      .apply(
        fontFamily: "Rubik",
        displayColor: kShrineBrown900,
        bodyColor: kShrineBrown900,
      );
}

// TODO: Dark Mode
ThemeData _buildDarkShrineTheme() {
  final ThemeData base = ThemeData.dark();
  return base.copyWith(
    accentColor: kShrineAltDarkGrey,
    primaryColor: kShrineAltDarkGrey,
    buttonColor: kShrineAltYellow,
    scaffoldBackgroundColor: kShrineAltDarkGrey,
    cardColor: kShrineAltDarkGrey,
    textSelectionColor: kShrinePink100,
    errorColor: kShrineErrorRed,
    textTheme: _buildShrineTextTheme(base.textTheme),
    primaryTextTheme: _buildShrineTextTheme(base.primaryTextTheme),
    accentTextTheme: _buildShrineTextTheme(base.accentTextTheme),
    primaryIconTheme: base.iconTheme.copyWith(color: kShrineAltYellow),
    inputDecorationTheme: InputDecorationTheme(
      border: CutCornersBorder(),
    ),
  );
}

TextTheme _buildDarkShrineTextTheme(TextTheme base) {
  return base
      .copyWith(
        headline5: base.headline5.copyWith(
          fontWeight: FontWeight.w500,
        ),
        headline6: base.headline6.copyWith(fontSize: 18.0),
        caption: base.caption.copyWith(
          fontWeight: FontWeight.w400,
          fontSize: 14.0,
        ),
      )
      .apply(
        fontFamily: 'Rubik',
        displayColor: kShrineSurfaceWhite,
        bodyColor: kShrineSurfaceWhite,
      );
}
