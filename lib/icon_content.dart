import 'package:flutter/material.dart';

const text_style = TextStyle(
  fontSize: 18.0,
  color: Color(0xFF8D8E98),
);

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
          style: text_style,
        ),
      ],
    );
  }
}
