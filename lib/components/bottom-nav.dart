import 'package:flutter/material.dart';
import 'package:market/resources/colors.dart';

class BottomNavBar extends StatelessWidget {
  final int index;

  BottomNavBar(this.index);

  // click listener for icons for redirect
  void onTap(BuildContext context, int index) {
    switch(index) {
      case 0: 
        Navigator.pushNamedAndRemoveUntil(context, '/home', (Route<dynamic> r) => false);
        break;
      case 1: 
        Navigator.pushNamedAndRemoveUntil(context, '/shop', (route) => route.isFirst);
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      onTap: (index) => onTap(context, index),
      selectedItemColor: ThemeColor.PRIMARY,
      unselectedItemColor: ThemeColor.FILL,
      type: BottomNavigationBarType.fixed,
      currentIndex: index,
      items: [
        BottomNavigationBarItem(
          icon: new Icon(Icons.home),
          title: new Text('Home'),
        ),
        BottomNavigationBarItem(
          icon: new Icon(Icons.shopping_cart),
          title: new Text('Shop'),
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.local_mall),
          title: Text('Bag'),
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.favorite),
          title: Text('Favorites'),
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.person),
          title: Text('Profile'),
        ),
      ],
    );
  }
}
