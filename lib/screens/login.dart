import 'package:flutter/material.dart';
import 'package:market/components/input.dart';
import 'package:market/components/button.dart';
import 'package:market/components/white-appbar.dart';
import 'package:market/resources/colors.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomPadding: false, // removes space above keyboard
        backgroundColor: ThemeColor.BACKGROUND,
        appBar: whiteAppBar(),
        body: SafeArea(
          child: Container(
            padding: EdgeInsets.all(16.0),
            child: Form(
              key: _formKey,
              child: ListView(
                children: [
                  // heading login
                  Text('Login', style: Theme.of(context).textTheme.headline1),
                  SizedBox(height: 60.0),
                  // email input
                  Input(
                      label: 'Email',
                      changeHandler: (text) {
                        return 'hello';
                      }),
                  SizedBox(height: 12.0),

                  // email input
                  Input(
                      label: 'Password',
                      isObscured: true,
                      changeHandler: (text) {
                        return 'hello';
                      }),
                  SizedBox(height: 12.0),

                  FlatButton(
                    padding: EdgeInsets.zero,
                    onPressed: () {
                      // go to forgot password screen
                      Navigator.pushReplacementNamed(
                          context, '/forgot-password');
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text('Forgot your password?',
                            style: Theme.of(context).textTheme.bodyText1),
                        Padding(padding: EdgeInsets.all(6.0)),
                        Icon(Icons.keyboard_arrow_right,
                            color: ThemeColor.PRIMARY, size: 18.0)
                      ],
                    ),
                  ),
                  SizedBox(height: 25.0),

                  PrimaryButton(
                      text: 'LOGIN',
                      onClick: () {
                        Navigator.pushNamedAndRemoveUntil(
                            context, '/home', (r) => false);
                        // if (_formKey.currentState.validate()) {
                        // hello
                        // }
                      })
                ],
              ),
            ),
          ),
        ));
  }
}
