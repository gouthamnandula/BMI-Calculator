import 'package:bmi_calculator/constants.dart';
import 'package:flutter/material.dart';
import 'reusablecard.dart';
import 'main.dart';
import 'input_page.dart';

class ResultsPage extends StatelessWidget {
  const ResultsPage({Key? key, required this.interpretation, required this.bmiResult, required this.resultText}) : super(key: key);
  final String bmiResult;
  final String resultText;
  final String interpretation;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Expanded(
              child: Container(
                child: Text('Your Result'),
              ),
          ),
          Expanded(
            flex: 5,
            child: ReusableCard(
              onPress: (){},
              colour: kActiveCardColor,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Text(
                    resultText.toUpperCase(),
                    style: kResultTextStyle,
                  ),
                  Text(
                    bmiResult,
                    style: kBMIResultTextStyle,
                  ),
                  RichText(
                    textAlign: TextAlign.center,
                    text: const TextSpan(
                        text: 'Normal BMI range:\n',
                        style: kTitleTextStyle,
                        children:<TextSpan>[
                          TextSpan(
                              text: '18.5 to 24.9 (kg/m\u00B2)',
                              style: kTitleTextStyle
                          ),
                        ]
                    ),
                  ),
                  Text(
                    interpretation,
                    textAlign: TextAlign.center,
                    style: kBodyTextStyle,
                  ),
                ],
              ),
            ),
          ),

          BottomButton(
            buttonTitle: 'RE-CALCULATE',
            onTap: () {
              Navigator.pop(context);
            },
          ),
        ],
      ),
    );
  }
}
