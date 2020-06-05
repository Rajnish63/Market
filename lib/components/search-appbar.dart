import 'package:flutter/material.dart';
import 'package:market/components/filter-bar.dart';
import 'package:market/resources/colors.dart';

AppBar searchAppBar({context, title, hasFilter = false}) {
  return AppBar(
      leading: IconButton(
        icon: Icon(Icons.arrow_back, color: Colors.black, size: 20.0),
        onPressed: () => Navigator.of(context).pop(),
      ),
      backgroundColor: hasFilter ? Colors.white : Colors.transparent,
      elevation: hasFilter ? 2 : 0,
      centerTitle: true,
      title: Text(title,
          style: Theme.of(context)
              .textTheme
              .headline5
              .copyWith(fontWeight: FontWeight.bold)),
      bottom: PreferredSize(
          preferredSize:
              !hasFilter ? Size.fromHeight(0) : Size.fromHeight(100.0),
          child: !hasFilter ? Container() : FilterBar()),
      actions: [
        IconButton(
            icon: Icon(Icons.search, color: ThemeColor.BLACK, size: 20.0),
            onPressed: () {}),
      ]);
}
