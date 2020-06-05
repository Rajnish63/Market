import 'package:flutter/material.dart';
import 'package:market/components/bottom-nav.dart';
import 'package:market/resources/colors.dart';
import 'package:market/components/icon-appbar.dart';

class Product extends StatefulWidget {
  @override
  _ProductState createState() => _ProductState();
}

class _ProductState extends State<Product> {
  void onClickShare() {
    // complete here
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      backgroundColor: ThemeColor.BACKGROUND,
      appBar: iconAppBar(
        context: context,
        title: 'Shopper',
        onClick: onClickShare,
        rightIcon: Icons.share,
      ),
      bottomNavigationBar: BottomNavBar(1),
    );
  }
}
