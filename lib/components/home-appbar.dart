import 'package:flutter/material.dart';
import 'package:market/resources/colors.dart';
import 'package:badges/badges.dart';

AppBar homeAppBar(context, title) {
  int _counter = 0;

  return AppBar(
    backgroundColor: Colors.transparent,
    elevation: 0,
    title: Text(title,
        style: Theme.of(context)
            .textTheme
            .headline5
            .copyWith(fontWeight: FontWeight.bold)),
    actions: [
      Badge(
        elevation: 0,
        padding: EdgeInsets.all(3.4),
        position: BadgePosition.topRight(top: 12, right: 6.5),
        animationDuration: Duration(milliseconds: 300),
        animationType: BadgeAnimationType.slide,
        badgeContent: Text(
          _counter.toString(),
          style: TextStyle(color: ThemeColor.SECONDARY, fontSize: 10),
        ),
        child: IconButton(
          icon: Icon(Icons.local_mall, color: ThemeColor.BLACK, size: 20.0),
          onPressed: () {}
        ),
      ),
    ],
  );
}
