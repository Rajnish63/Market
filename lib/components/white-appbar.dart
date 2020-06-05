import 'package:flutter/material.dart';
import 'package:market/resources/colors.dart';

AppBar whiteAppBar({actions}) {
  return AppBar(
    backgroundColor: Colors.transparent,
    elevation: 0,
    iconTheme: IconThemeData(color: ThemeColor.BLACK),
    actions: (actions != null) ? actions : [],
  );
}
