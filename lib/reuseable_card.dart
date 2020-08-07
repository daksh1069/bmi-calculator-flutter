import 'package:flutter/material.dart';
import 'constants.dart';

class ReusedCard extends StatelessWidget {
  ReusedCard({
    @required this.colour,
    this.cardChild,
    this.onPress,
  });

  final Color colour;
  final Widget cardChild;
  final Function onPress;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        child: cardChild,
        margin: EdgeInsets.all(15),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: colour,
        ),
      ),
    );
  }
}
