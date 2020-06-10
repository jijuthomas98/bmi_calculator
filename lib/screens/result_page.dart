import 'package:bmicalculator/constants.dart';
import 'package:flutter/material.dart';
import 'package:bmicalculator/components/reusebleCard.dart';
import 'package:bmicalculator/components/bottom_bar.dart';

class ResultPage extends StatelessWidget {
  ResultPage({this.bmiFitnessResult, this.bmiInterpretation, this.bmiResult});

  final String bmiResult;
  final String bmiFitnessResult;
  final String bmiInterpretation;
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
                    bmiFitnessResult,
                    style: kFitnessResultTextStyle,
                  ),
                  Text(
                    bmiResult,
                    style: kBMIIndexTextStyle,
                  ),
                  Text(
                    bmiInterpretation,
                    textAlign: TextAlign.center,
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
