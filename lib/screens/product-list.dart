import 'package:flutter/material.dart';
import 'package:market/components/bottom-nav.dart';
import 'package:market/components/catalog-item-one.dart';
import 'package:market/components/search-appbar.dart';
import 'package:market/resources/colors.dart';

class ProductList extends StatefulWidget {
  @override
  _ProductListState createState() => _ProductListState();
}

class _ProductListState extends State<ProductList> {
  List<String> filtersApplied = ['T-Shirt', ' 1000', 'Red', 'XL', 'Jockey'];
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
    
    Size size = MediaQuery.of(context).size;
    double itemHeight = size.height/ 2;
    double itemWidth = size.width / 2;

    return Scaffold(
      resizeToAvoidBottomPadding: false,
      backgroundColor: ThemeColor.BACKGROUND,
      appBar: searchAppBar(context: context, title: 'Shopper', hasFilter: true),
      bottomNavigationBar: BottomNavBar(1),
      body: SafeArea(
        child: Container(
          child: GridView.count(
            crossAxisSpacing: 12.0,
            // mainAxisSpacing: 1.0,
            childAspectRatio: (itemWidth / itemHeight),
            crossAxisCount: 2,
            shrinkWrap: true,
            padding: EdgeInsets.all(16.0),
            children: List.generate(collectionData.length, (index) {
              return CatalogItemOne(
                imageURL: collectionData[index]['imgURL'],
                isNew: collectionData[index]['isNew'],
                marginOnRight: 0,
              );
            }),
          ),
        ),
      ),
    );
  }
}
