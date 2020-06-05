import 'package:flutter/material.dart';
import 'package:market/components/bottom-nav.dart';
import 'package:market/components/catalog-item-one.dart';
import 'package:market/resources/colors.dart';
import 'package:market/components/home-appbar.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:market/components/home-slider.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List collectionData = [
    {
      'imgURL':
          'https://i.pinimg.com/736x/c4/b3/4b/c4b34b8639a99ef0787411811b8e82c1.jpg',
      'isNew': true
    },
    {
      'imgURL':
          'https://cdn01.buxtonco.com/news/1999/istock-506442302__large.jpg',
      'isNew': false
    },
    {
      'imgURL':
          'https://i.pinimg.com/736x/c4/b3/4b/c4b34b8639a99ef0787411811b8e82c1.jpg',
      'isNew': true
    },
    {
      'imgURL':
          'https://cdn01.buxtonco.com/news/1999/istock-506442302__large.jpg',
      'isNew': false
    },
    {
      'imgURL':
          'https://i.pinimg.com/736x/c4/b3/4b/c4b34b8639a99ef0787411811b8e82c1.jpg',
      'isNew': true
    },
    {
      'imgURL':
          'https://cdn01.buxtonco.com/news/1999/istock-506442302__large.jpg',
      'isNew': false
    }
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomPadding: false,
        backgroundColor: ThemeColor.BACKGROUND,
        appBar: homeAppBar(context, 'SHOPPER'),
        bottomNavigationBar: BottomNavBar(0),
        body: SafeArea(
          child: Container(
            padding:
                EdgeInsets.only(top: 0, left: 16.0, right: 16.0, bottom: 0.0),
            child: ListView(
              children: [
                // Top SLider
                CarouselSlider(
                  options: CarouselOptions(
                    autoPlay: true,
                    aspectRatio: 2.0,
                    enlargeCenterPage: true,
                  ),
                  items: imageSliders,
                ),

                // Trending Collection
                SizedBox(height: 30.0),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Trending Collection',
                              style: Theme.of(context).textTheme.headline2),
                          SizedBox(height: 4.0),
                          Text('Summer Sale Collection',
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyText2
                                  .apply(color: ThemeColor.FILL)),
                        ]),
                    GestureDetector(
                        child:
                            Text('View All', style: TextStyle(fontSize: 12.0)),
                        onTap: () {})
                  ],
                ),

                SizedBox(height: 22),

                // trending collection
                SizedBox(
                  height: 300.0,
                  child: ListView.builder(
                      physics: BouncingScrollPhysics(),
                      scrollDirection: Axis.horizontal,
                      itemCount: collectionData.length,
                      itemBuilder: (BuildContext ctxt, int index) {
                        return CatalogItemOne(
                          imageURL: collectionData[index]['imgURL'],
                          isNew: collectionData[index]['isNew'],
                        );
                      }),
                ),


                // New Collection
                SizedBox(height: 10.0),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('New',
                              style: Theme.of(context).textTheme.headline2),
                          SizedBox(height: 4.0),
                          Text('Summer Sale Collection',
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyText2
                                  .apply(color: ThemeColor.FILL)),
                        ]),
                    GestureDetector(
                        child:
                            Text('View All', style: TextStyle(fontSize: 12.0)),
                        onTap: () {})
                  ],
                ),

                SizedBox(height: 22),

                // trending collection
                SizedBox(
                  height: 300.0,
                  child: ListView.builder(
                      physics: BouncingScrollPhysics(),
                      scrollDirection: Axis.horizontal,
                      itemCount: collectionData.length,
                      itemBuilder: (BuildContext ctxt, int index) {
                        return CatalogItemOne(
                          imageURL: collectionData[index]['imgURL'],
                          isNew: collectionData[index]['isNew'],
                        );
                      }),
                ),


                // Offers Collection
                SizedBox(height: 10.0),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Retro Style',
                              style: Theme.of(context).textTheme.headline2),
                          SizedBox(height: 4.0),
                          Text('Olg gauge Collection',
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyText2
                                  .apply(color: ThemeColor.FILL)),
                        ]),
                    GestureDetector(
                        child:
                            Text('View All', style: TextStyle(fontSize: 12.0)),
                        onTap: () {})
                  ],
                ),

                SizedBox(height: 22),

                // trending collection
                SizedBox(
                  height: 300.0,
                  child: ListView.builder(
                      physics: BouncingScrollPhysics(),
                      scrollDirection: Axis.horizontal,
                      itemCount: collectionData.length,
                      itemBuilder: (BuildContext ctxt, int index) {
                        return CatalogItemOne(
                          imageURL: collectionData[index]['imgURL'],
                          isNew: collectionData[index]['isNew'],
                        );
                      }),
                ),


              ],
            ),
          ),
        ));
  }
}
