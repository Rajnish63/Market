import 'package:flutter/material.dart';
import 'package:market/components/input.dart';
import 'package:market/components/button.dart';
import 'package:market/components/white-appbar.dart';
import 'package:market/resources/colors.dart';

class Signup extends StatefulWidget {
  @override
  _SignupState createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomPadding: false, // removes space above keyboard
        backgroundColor: ThemeColor.BACKGROUND,
        appBar: whiteAppBar(),
        body: SafeArea(
          child: Container(
            padding: EdgeInsets.all(16.0),
            child: ListView(
              children: [
                // heading login
                Text('Sign up', style: Theme.of(context).textTheme.headline1),
                SizedBox(height: 60.0),
                // email input
                Input(
                    label: 'Email',
                    changeHandler: (text) {
                      return 'hello';
                    }),
                SizedBox(height: 12.0),

                // password input
                Input(
                    label: 'Password',
                    isObscured: true,
                    changeHandler: (text) {
                      return 'hello';
                    }),
                SizedBox(height: 12.0),

                // confirm password input
                Input(
                    label: 'Confirm Password',
                    isObscured: true,
                    changeHandler: (text) {
                      return 'hello';
                    }),
                SizedBox(height: 12.0),

                FlatButton(
                  padding: EdgeInsets.zero,
                  onPressed: () {
                    // go to forgot password screen
                    Navigator.pushReplacementNamed(context, '/login');
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text('Already have an account?',
                          style: Theme.of(context).textTheme.bodyText1),
                      Padding(padding: EdgeInsets.all(6.0)),
                      Icon(Icons.keyboard_arrow_right,
                          color: ThemeColor.PRIMARY, size: 18.0)
                    ],
                  ),
                ),
                SizedBox(height: 25.0),

                PrimaryButton(
                    text: 'SIGN UP',
                    onClick: () {
                      Navigator.pushNamedAndRemoveUntil(
                          context, '/home', (r) => false);
                    })
              ],
            ),
          ),
        ));
  }
}
