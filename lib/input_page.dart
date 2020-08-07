import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'icon_content.dart';
import 'reuseable_card.dart';

const BottomContainerHeight = 80.0;
const ActiveCardColor = Color(0xFF1D1E33);
const inActiveCardColor = Color(0xFF111328);
const BottomContainerColor = Color(0xFFEB1555);

enum GenderType { Male, Female }

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Color maleCardColour = inActiveCardColor;
  Color femaleCardColour = inActiveCardColor;
  bool maleCardSelected = false;
  bool femaleCardSelected = false;

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
                        maleCardSelected = true;
                        femaleCardSelected = false;
                      });
                    },
                    child: ReusedCard(
                      colour: maleCardSelected
                          ? maleCardColour = ActiveCardColor
                          : maleCardColour = inActiveCardColor,
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
                        femaleCardSelected = true;
                        maleCardSelected = false;
                      });
                    },
                    child: ReusedCard(
                      colour: femaleCardSelected
                          ? femaleCardColour = ActiveCardColor
                          : femaleCardColour = inActiveCardColor,
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
