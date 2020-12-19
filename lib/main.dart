import 'package:flutter/material.dart';
import 'package:market/resources/theme.dart';
// routing screens
import 'package:market/screens/login.dart';
import 'package:market/screens/signup.dart';
import 'package:market/screens/landing.dart';
import 'package:market/screens/shop.dart';
import 'package:market/screens/forgot-password.dart';
import 'package:market/screens/home.dart';
import 'package:market/screens/filters.dart';
import 'package:market/screens/product-list.dart';
import 'package:market/screens/product.dart';
import 'package:market/screens/add-comment.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: theme(context),
      initialRoute: '/',
      routes: {
        '/home': (ctx) => Home(),
        '/login': (ctx) => Login(),
        '/signup': (ctx) => Signup(),
        '/forgot-password': (ctx) => ForgotPassword(),
        '/shop': (ctx) => Shop(), 
        '/product': (ctx) => Product(),
        '/products': (ctx) => ProductList(),
        '/filters': (ctx) => Filters(),
        '/add-comment': (ctx) => AddComment(),
        '/': (ctx) => Landing(),
      },
    );
  }
}