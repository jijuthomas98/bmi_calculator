import 'package:flutter/material.dart';
import 'package:bmicalculator/constants.dart';
import 'package:bmicalculator/screens/result_page.dart';

class BottomBar extends StatelessWidget {
  BottomBar({this.barText, this.onPush});
  final String barText;
  final Function onPush;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPush,
      child: Container(
        child: Center(
          child: Text(
            barText,
            style: kBottomBarTextStyle,
          ),
        ),
        color: Color(0xFFEB1555),
        margin: EdgeInsets.only(top: 10.0),
        width: double.infinity,
        height: kHeightOfBottomBar,
        padding: EdgeInsets.only(bottom: 15.0),
      ),
    );
  }
}
