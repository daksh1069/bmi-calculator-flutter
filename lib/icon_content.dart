import 'package:flutter/material.dart';
import 'constants.dart';

class GenderIcon extends StatelessWidget {
  GenderIcon({this.label, this.genderIcon});
  final IconData genderIcon;
  final String label;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          genderIcon,
          size: 80.0,
        ),
        SizedBox(
          height: 15.0,
        ),
        Text(
          label,
          style: ktext_style,
        ),
      ],
    );
  }
}
