import 'package:flutter/material.dart';
import 'package:bmicalculator/constants.dart';

class IconContent extends StatelessWidget {
  IconContent({this.genderIcon, this.genderText});
  final IconData genderIcon;
  final String genderText;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(
          genderIcon,
          size: kIconSize,
        ),
        SizedBox(
          height: 10.0,
        ),
        Text(
          genderText,
          style: kLabelTextStyle,
        ),
      ],
    );
  }
}
