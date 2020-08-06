import 'package:flutter/material.dart';

class ReusedCard extends StatelessWidget {
  ReusedCard({@required this.colour, this.cardChild});

  final Color colour;
  final Widget cardChild;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: cardChild,
      margin: EdgeInsets.all(15),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: colour,
      ),
    );
  }
}
