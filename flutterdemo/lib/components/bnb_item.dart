import 'package:flutter/material.dart';

// class MyBottomNavigationBarItem extends BottomNavigationBarItem {
//   MyBottomNavigationBarItem(String iconUrl, String iconTitle)
//       : super(
//             icon: Image.asset(
//               iconUrl,
//               width: 32,
//             ),
//             activeIcon: Image.asset(
//               "${iconUrl}",
//               width: 32,
//             ),
//             title: Text(iconTitle));
// }

class MyBottomNavigationBarItem extends BottomNavigationBarItem {
  MyBottomNavigationBarItem(IconData icons, String iconTitle)
      : super(icon: Icon(icons), title: Text(iconTitle));
}
