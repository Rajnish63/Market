import 'package:flutter/material.dart';
import 'package:market/components/bottom-nav.dart';
import 'package:market/resources/colors.dart';

class Filters extends StatefulWidget {
  @override
  _FiltersState createState() => _FiltersState();
}

class _FiltersState extends State<Filters> {
  RangeValues _price = RangeValues(0.3, 0.7);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      backgroundColor: ThemeColor.BACKGROUND,
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.black, size: 20.0),
          onPressed: () => Navigator.of(context).pop(),
        ),
        backgroundColor: ThemeColor.SECONDARY,
        elevation: 2,
        centerTitle: true,
        title: Text('Filters',
            style: Theme.of(context)
                .textTheme
                .headline5
                .copyWith(fontWeight: FontWeight.bold)),
      ),
      bottomNavigationBar: BottomNavBar(1),
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.only(top: 16.0, left: 16.0, right: 16.0),
          child: ListView(
            children: [
              // price range
              Text(
                'Price Range',
                style: Theme.of(context).textTheme.headline4,
              ),
              InputCard(
                child: RangeSlider(
                  inactiveColor: ThemeColor.FILL,
                  activeColor: Theme.of(context).primaryColor,
                  values: _price,
                  onChanged: (RangeValues price) {
                    setState(() {
                      _price = price;
                    });
                  },
                ),
              ),

              // Colors
              SizedBox(height: 16.0),
              Text(
                'Colors',
                style: Theme.of(context).textTheme.headline4,
              ),

              InputCard(
                child: Container(
                  padding: EdgeInsets.all(12.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      ColorBar(color: Colors.black),
                      ColorBar(color: Colors.grey.shade300),
                      ColorBar(color: Colors.red.shade300),
                      ColorBar(color: Colors.brown.shade300),
                      ColorBar(color: Colors.blue.shade300),
                    ],
                  ),
                ),
              ),

              // Sizes
              SizedBox(height: 16.0),
              Text(
                'Sizes',
                style: Theme.of(context).textTheme.headline4,
              ),

              InputCard(
                  child: Container(
                padding: EdgeInsets.all(12.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizeNames(name: 'XS'),
                    SizeNames(name: 'S'),
                    SizeNames(name: 'M'),
                    SizeNames(name: 'L'),
                    SizeNames(name: 'XL'),
                  ],
                ),
              )),
            ],
          ),
        ),
      ),
    );
  }
}

class InputCard extends StatelessWidget {
  final Widget child;

  InputCard({@required this.child});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.only(top: 16.0),
      child: child,
    );
  }
}

class ColorBar extends StatelessWidget {
  final Color color;
  final double size = 36.0;

  ColorBar({@required this.color});

  @override
  Widget build(BuildContext context) {
    return new Container(
      width: size,
      height: size,
      decoration: new BoxDecoration(
        color: color,
        shape: BoxShape.circle,
      ),
    );
  }
}

class SizeNames extends StatefulWidget {
  final String name;
  SizeNames({@required this.name});

  @override
  _SizeNamesState createState() => _SizeNamesState(name: name);
}

class _SizeNamesState extends State<SizeNames> {
  bool isTapped = false;
  final String name;
  final double size = 36;

  _SizeNamesState({@required this.name});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        setState(() {
          this.isTapped = !isTapped;
        });
      },
      child: Container(
        width: size,
        height: size,
        decoration: new BoxDecoration(
          color: isTapped ? ThemeColor.PRIMARY : ThemeColor.SECONDARY,
          borderRadius: BorderRadius.all(Radius.circular(5.0)),
        ),
        child: Center(
          child: Text(name,
              style: TextStyle(
                color: isTapped ? ThemeColor.SECONDARY : ThemeColor.BLACK,
                fontSize: 14.0,
              )),
        ),
      ),
    );
  }
}
