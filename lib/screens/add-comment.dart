import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:market/components/button.dart';
import 'package:market/resources/colors.dart';
import 'package:market/components/icon-appbar.dart';

class AddComment extends StatefulWidget {
  @override
  _AddCommentState createState() => _AddCommentState();
}

class _AddCommentState extends State<AddComment> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ThemeColor.BACKGROUND,
      appBar: iconAppBar(
        context: context,
        title: 'Submit your review',
        onClick: () {},
        rightIcon: null,
      ),
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.all(15.0),
          child: new ListView(
            children: <Widget>[
              SizedBox(height: 25.0),
              Center(
                child: Text('What will you rate?',
                    style: Theme.of(context).textTheme.headline3),
              ),
              SizedBox(height: 16.0, width: double.infinity),
              Center(
                child: RatingBar(
                  initialRating: 0,
                  itemSize: 36.0,
                  minRating: 0,
                  direction: Axis.horizontal,
                  allowHalfRating: true,
                  itemCount: 5,
                  unratedColor: ThemeColor.FILL,
                  itemBuilder: (context, _) =>
                      Icon(Icons.star, color: Colors.amber),
                  onRatingUpdate: (rating) {},
                ),
              ),
              SizedBox(height: 25.0),
              Card(
                color: ThemeColor.SECONDARY,
                child: Padding(
                  padding: EdgeInsets.all(12.0),
                  child: TextField(
                    maxLines: 10,
                    decoration: InputDecoration.collapsed(
                        hintText: "Enter your experience here",
                    ),
                    style: Theme.of(context).textTheme.headline5.copyWith(
                      backgroundColor: ThemeColor.SECONDARY, 
                    ),
                  ),
                ),
              ),
              SizedBox(height: 25.0),
              PrimaryButton(onClick: () {}, text: 'SUBMIT REVIEW')
            ],
          ),
        ),
      ),
    );
  }
}
