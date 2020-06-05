import 'package:flutter/material.dart';
import 'package:market/resources/colors.dart';

const String DefaultFontFamily = 'Metropolis';

ThemeData theme(context) {
  return new ThemeData(
      fontFamily: DefaultFontFamily,
      brightness: Brightness.light,
      primaryColor: ThemeColor.PRIMARY,
      accentColor: ThemeColor.SECONDARY,
      textTheme: Theme.of(context).textTheme.copyWith(
            headline1: TextStyle(fontSize: 34, fontWeight: FontWeight.bold),
            headline2: TextStyle(fontSize: 22, fontWeight: FontWeight.w600),
            headline3: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
            headline4: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
            headline5: TextStyle(fontSize: 16, fontWeight: FontWeight.normal),
            bodyText1: TextStyle(fontSize: 14, letterSpacing: -0.15),
            bodyText2: TextStyle(fontSize: 11),
            button: TextStyle(fontSize: 14),
        ).apply(
          displayColor: ThemeColor.BLACK,
          bodyColor: ThemeColor.BLACK,
        )
      );
}
