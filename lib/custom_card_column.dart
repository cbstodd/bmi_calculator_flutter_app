import 'package:bmi_calculator/raven_theme_data.dart';
import 'package:flutter/material.dart';

class CustomCardColumn extends StatelessWidget {
  const CustomCardColumn({
    Key key,
    @required this.icon,
    @required this.text,
  }) : super(key: key);

  final IconData icon;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(
          icon,
          size: 100.0,
          color: kPurple,
        ),
        SizedBox(
          height: 15.0,
        ),
        Text(
          text,
          style: kRobotoFontFamily30,
        )
      ],
    );
  }
}
