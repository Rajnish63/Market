import 'package:flutter/material.dart';
import 'package:market/components/button.dart';

class Landing extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.all(16.0),
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Center(
                  child: Text(
                    'SHOPPER',
                    style: TextStyle(
                      fontSize: 55,
                    ),
                  ),
                ),
                SizedBox(height: 26.0),
                PrimaryButton(
                    onClick: () {
                      Navigator.pushNamed(context, '/login');
                    },
                    text: 'Login'),
                PrimaryButton(
                    onClick: () {
                      Navigator.pushNamed(context, '/signup');
                    },
                    text: 'Signup')
              ]),
        ),
      ),
    );
  }
}
