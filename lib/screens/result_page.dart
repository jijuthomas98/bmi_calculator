import 'package:bmicalculator/constants.dart';
import 'package:flutter/material.dart';
import 'package:bmicalculator/components/reusebleCard.dart';
import 'package:bmicalculator/components/bottom_bar.dart';

class ResultPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
            child: Center(
              child: Text(
                'Your Result',
                style: kResultTitleStyle,
              ),
            ),
          ),
          Expanded(
            flex: 6,
            child: ReusableCard(
              colour: kColorOfCard,
              childCard: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Text(
                    'OVERWEIGHT',
                    style: kFitnessResultTextStyle,
                  ),
                  Text(
                    '23',
                    style: kBMIIndexTextStyle,
                  ),
                  Text(
                    'You have higher then normal body weight',
                    style: kBMIResultTextStyle,
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: BottomBar(
              barText: 'RECALCULATE',
              onPush: () {
                Navigator.pop(context);
              },
            ),
          ),
        ],
      ),
    );
  }
}
