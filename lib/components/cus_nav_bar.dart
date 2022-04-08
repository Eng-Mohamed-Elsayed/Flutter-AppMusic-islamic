import 'package:fancy_bottom_navigation/fancy_bottom_navigation.dart';
import 'package:flutter/material.dart';

class CustomNavBar extends StatelessWidget {
  const CustomNavBar({Key? key, required this.indexPage, required this.onClick})
      : super(key: key);
  final int indexPage;
  final Function(int) onClick;

  @override
  Widget build(BuildContext context) {
    return FancyBottomNavigation(
      initialSelection: indexPage,
      barBackgroundColor: Colors.teal,
      onTabChangedListener: onClick,
      tabs: [
        TabData(iconData: Icons.sticky_note_2, title: ""),
        TabData(iconData: Icons.video_library, title: ""),
        TabData(iconData: Icons.audiotrack, title: ""),
      ],
      circleColor: Colors.white,
      activeIconColor: Colors.teal,
      inactiveIconColor: Colors.white60,
    );
  }
}
