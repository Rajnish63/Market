import 'package:flutter/material.dart';
import 'package:market/resources/colors.dart';

class Input extends StatelessWidget {
  final Function changeHandler;
  final String label;
  final bool isObscured;
  final Map padding = {'main': 8.0, 'cross': 14.0};

  Input({@required this.changeHandler, @required this.label, this.isObscured = false});

  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 4.0,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(4.0))
      ),
      child: TextField(
          obscureText: isObscured? true: false,
          decoration: InputDecoration(
          labelText: label,
          labelStyle: TextStyle(color: ThemeColor.FILL),
          contentPadding: EdgeInsetsDirectional.only(
            bottom: padding['main'],
            top: padding['main'],
            start: padding['cross'],
            end: padding['cross'],
          ),
          enabledBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: Colors.transparent),
          ),
          focusedBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: Colors.transparent),
          ),
        )
      ),
    );
  }
}
