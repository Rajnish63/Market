import 'package:flutter/material.dart';
import 'package:market/resources/colors.dart';

class PrimaryButton extends StatelessWidget {
  final String text;
  final Function onClick;

  PrimaryButton({@required this.onClick, @required this.text});

  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      padding: EdgeInsets.only(top: 12.0, bottom: 12.0, left: 60.0, right: 60.0),
      shape: new RoundedRectangleBorder(
          borderRadius: new BorderRadius.circular(25.0)),
      onPressed: onClick,
      color: Theme.of(context).primaryColor,
      child: Text(
        text,
        style: TextStyle(
            fontFamily: 'Metropolis', fontSize: 16.0, color: Colors.white),
      ),
    );
  }
}

class PrimaryButtonSmall extends StatelessWidget {
  final String text;
  final Function onClick;

  PrimaryButtonSmall({@required this.onClick, @required this.text});

  @override
  Widget build(BuildContext context) {
    return ButtonTheme(
      height: 30.0,
      child: RaisedButton(
        shape: new RoundedRectangleBorder(
            borderRadius: new BorderRadius.circular(25.0)),
        onPressed: onClick,
        color: Theme.of(context).primaryColor,
        child: Text(
          text,
          style: TextStyle(
              fontFamily: 'Metropolis', fontSize: 12.0, color: Colors.white),
        ),
      ),
    );
  }
}

class SimpleButton extends StatelessWidget {
  final String text;
  final Function onClick;

  SimpleButton({@required this.onClick, @required this.text});

  @override
  Widget build(BuildContext context) {
    return OutlineButton(
      borderSide: BorderSide(color: ThemeColor.BLACK),
      padding: EdgeInsets.zero,
      shape: new RoundedRectangleBorder(
          borderRadius: new BorderRadius.circular(25.0)),
      onPressed: onClick,
      color: Colors.transparent,
      child: Text(
        text,
        style: TextStyle(
            fontFamily: 'Metropolis', fontSize: 16.0, color: ThemeColor.BLACK),
      ),
    );
  }
}


class SimpleButtonSmall extends StatelessWidget {
  final String text;
  final Function onClick;

  SimpleButtonSmall({@required this.onClick, @required this.text});

  @override
  Widget build(BuildContext context) {
    return ButtonTheme(
      height: 30.0,
      child: OutlineButton(
      borderSide: BorderSide(color: ThemeColor.BLACK),
      padding: EdgeInsets.zero,
      shape: new RoundedRectangleBorder(
          borderRadius: new BorderRadius.circular(25.0)),
      onPressed: onClick,
      color: Colors.transparent,
      child: Text(
        text,
        style: TextStyle(
            fontFamily: 'Metropolis', fontSize: 12.0, color: ThemeColor.BLACK),
      ),
    ),
    );
  }
}
