import 'package:flutter/material.dart';
import 'package:market/components/button.dart';
import 'package:market/components/icon-appbar.dart';
import 'package:market/resources/colors.dart';
import 'package:market/components/bottom-nav.dart';

class Shop extends StatefulWidget {
  @override
  _ShopState createState() => _ShopState();
}

class _ShopState extends State<Shop> {
  final List categories = [
    {'title': 'Tops', 'id': '56899'},
    {'title': 'Shirts & Blouses', 'id': '56899'},
    {'title': 'Cardigans & Sweaters', 'id': '56899'},
    {'title': 'Knitwear', 'id': '56899'},
    {'title': 'Blazers', 'id': '56899'},
    {'title': 'Outwears', 'id': '56899'},
    {'title': 'Pants', 'id': '56899'},
    {'title': 'Jeans', 'id': '56899'},
    {'title': 'Shorts', 'id': '56899'},
    {'title': 'Skirts', 'id': '56899'},
    {'title': 'Dresses', 'id': '56899'},
    {'title': 'Jumpsuites', 'id': '56899'},
  ];

  void onClickSearch() {
    // complete here
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomPadding: false,
        backgroundColor: ThemeColor.BACKGROUND,
        appBar: iconAppBar(context: context, title: 'Category', onClick: onClickSearch),
        bottomNavigationBar: BottomNavBar(1),
        body: SafeArea(
          child: Container(
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                // view all button

                Container(
                  padding: EdgeInsets.only(
                      top: 8.0, left: 16.0, right: 16.0, bottom: 0.0),
                  child: PrimaryButton(
                      onClick: () {
                        Navigator.pushNamedAndRemoveUntil(
                            context, '/products', (r) => r.isFirst);
                      },
                      text: 'VIEW ALL ITEMS'),
                ),

                // choose category
                SizedBox(height: 12.0),

                Container(
                  padding: EdgeInsets.only(
                      top: 0, left: 16.0, right: 16.0, bottom: 0.0),
                  child: Text('Choose catergory',
                      style: Theme.of(context)
                          .textTheme
                          .button
                          .apply(color: ThemeColor.FILL)),
                ),

                // list
                SizedBox(height: 25.0),
                Expanded(
                  child: ListView.builder(
                    itemCount: categories.length,
                    itemBuilder: (BuildContext ctx, index) {
                      return FlatButton(
                        shape: new BorderDirectional(
                            bottom: BorderSide(color: ThemeColor.FILL)),
                        onPressed: () {
                          Navigator.pushNamedAndRemoveUntil(
                              context, '/products', (r) => r.isFirst);
                        },
                        child: Align(
                          alignment: Alignment.topLeft,
                          child: Text(
                            categories[index]['title'],
                            style:
                                Theme.of(context).textTheme.headline5.apply(),
                          ),
                        ),
                      );
                    },
                  ),

                  // end
                )
              ])),
        ));
  }
}
