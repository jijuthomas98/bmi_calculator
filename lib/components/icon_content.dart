import 'package:flutter/material.dart';

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
          size: 100.0,
        ),
        SizedBox(
          height: 10.0,
        ),
        Text(
          genderText,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 20.0,
            color: Color(0xFF8D8E89),
          ),
        ),
      ],
    );
  }
}
