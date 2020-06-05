import 'package:flutter/material.dart';
import 'package:market/components/button.dart';
import 'package:market/components/input.dart';
import 'package:market/components/white-appbar.dart';
import 'package:market/resources/colors.dart';

class ForgotPassword extends StatefulWidget {
  @override
  _ForgotPasswordState createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPassword> {
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
                Text('Forgot Passoword',
                    style: Theme.of(context).textTheme.headline1),
                SizedBox(height: 60.0),

                Text(
                    'Please enter your email address' +
                        'You will recieve a link to create new password',
                    style: Theme.of(context).textTheme.bodyText1),
                SizedBox(height: 16.0),

                // email input
                Input(
                    label: 'Email',
                    changeHandler: (text) {
                      return 'hello';
                    }),
                SizedBox(height: 50.0),

                PrimaryButton(
                    text: 'SEND',
                    onClick: () {
                      print('hello');
                    })
              ],
            ),
          ),
        ));
  }
}
