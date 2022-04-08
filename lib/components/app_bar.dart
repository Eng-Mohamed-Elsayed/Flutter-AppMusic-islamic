import 'package:flutter/material.dart';

class AppBarSimple extends StatelessWidget with PreferredSizeWidget {
  AppBarSimple({Key? key, this.title = " ايها المــريد"}) : super(key: key);
  final String title;
  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(
        title,
        style: const TextStyle(
          fontFamily: "THULUTH",
          fontWeight: FontWeight.bold,
          fontSize: 30,
          shadows: <Shadow>[
            Shadow(
              offset: Offset(2.0, 2.0),
              blurRadius: 7.0,
              color: Colors.black,
            ),
          ],
        ),
      ),
      backgroundColor: Colors.teal,
      centerTitle: true,
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(AppBar().preferredSize.height);
}
