import 'package:bmi_calculator/component/constants.dart';
import 'package:flutter/material.dart';
import '../component/reuseable_card.dart';

class ResultPage extends StatelessWidget {
  String Status = 'Normal';
  int BMI = 24;
  String Advice = 'Keep Doing what you\'re doing';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(
            child: Text(
              'Your Result',
              style: kLargerButtonTextStyle,
            ),
          ),
          Expanded(
            child: Column(
              children: [
                Expanded(
                  child: ReusedCard(
                    colour: kActiveCardColor,
                    cardChild: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Center(
                          child: Text(
                            Status,
                            style: kStatusTextStyle,
                          ),
                        ),
                        Center(
                          child: Text(
                            BMI.toString(),
                            style: kLargerNumberTextStyle,
                          ),
                        ),
                        Center(
                          child: Text(
                            Advice,
                            style: kResultTextStyle,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.pushNamed(context, '/');
            },
            child: Container(
              padding: EdgeInsets.only(bottom: 20.0),
              child: Center(
                child: Text(
                  'RE-CALCULATE',
                  style: kLargeButtonTextStyle,
                ),
              ),
              color: kBottomContainerColor,
              margin: EdgeInsets.only(top: 10.0),
              width: double.infinity,
              height: kBottomContainerHeight,
            ),
          ),
        ],
      ),
    );
  }
}
