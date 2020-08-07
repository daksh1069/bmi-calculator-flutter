import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'icon_content.dart';
import 'reuseable_card.dart';

const BottomContainerHeight = 80.0;
const ActiveCardColor = Color(0xFF1D1E33);
const inActiveCardColor = Color(0xFF111328);
const BottomContainerColor = Color(0xFFEB1555);

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Color maleCardColour = inActiveCardColor;
  Color femaleCardColour = inActiveCardColor;
  // 1 = male , 2 = female
  void updateColor(int gender) {
    if (gender == 1) {
      {
        if (maleCardColour == inActiveCardColor) {
          print('Colour should activate male');
          maleCardColour = ActiveCardColor;
          femaleCardColour = inActiveCardColor;
        } else {
          print('Colour should deactivate male');
          maleCardColour = inActiveCardColor;
        }
      }
    }
    if (gender == 2) {
      if (femaleCardColour == inActiveCardColor) {
        femaleCardColour = ActiveCardColor;
        maleCardColour = inActiveCardColor;
        print('Colour should activate female');
      } else {
        femaleCardColour = inActiveCardColor;
        print('Colour should  deactivate female');
      }
    }
  }

  bool enabled = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        children: [
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      print('Male Card was Pressed');
                      setState(() {
                        updateColor(1);
                      });
                    },
                    child: ReusedCard(
                      colour: maleCardColour,
                      cardChild: GenderIcon(
                        genderIcon: FontAwesomeIcons.mars,
                        label: 'MALE',
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      print('Female Card was pressed');
                      setState(() {
                        updateColor(2);
                      });
                    },
                    child: ReusedCard(
                      colour: femaleCardColour,
                      cardChild: GenderIcon(
                        genderIcon: FontAwesomeIcons.venus,
                        label: 'FEMALE',
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: ReusedCard(
              colour: ActiveCardColor,
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: ReusedCard(
                    colour: ActiveCardColor,
                  ),
                ),
                Expanded(
                  child: ReusedCard(
                    colour: ActiveCardColor,
                  ),
                ),
              ],
            ),
          ),
          Container(
            color: BottomContainerColor,
            margin: EdgeInsets.only(top: 10.0),
            width: double.infinity,
            height: BottomContainerHeight,
          ),
        ],
      ),
    );
  }
}
