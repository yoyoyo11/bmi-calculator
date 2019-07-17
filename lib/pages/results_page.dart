import 'package:flutter/material.dart';

import 'package:bmi_calculator/components/bottom_button.dart';
import 'package:bmi_calculator/constants.dart';
import 'package:bmi_calculator/components/reusable_card.dart';

class ResultsPage extends StatelessWidget {
  final String resultTitle;
  final String resultBMI;
  final String resultInterpretation;

  ResultsPage(
      {@required this.resultTitle,
      @required this.resultBMI,
      @required this.resultInterpretation});

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
              child: Text('Your Result', style: kBodyHeadingTextStyle),
            ),
          ),
          Expanded(
            flex: 5,
            child: ReusableCard(
              color: kActiveCardColor,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Text(
                    resultTitle.toUpperCase(),
                    style: kResultTextStyle,
                  ),
                  Text(
                    resultBMI,
                    style: kResultScoreTextStyle,
                  ),
                  Text(
                    resultInterpretation,
                    style: kResultInfoTextStyle,
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
          ),
          BottomButton(
            onTap: () {
              Navigator.pop(context);
            },
            buttonLabel: 'RE-CALCULATE',
          ),
        ],
      ),
    );
  }
}
