import 'package:bmi_calculator/raven_theme_data.dart';
import 'package:flutter/material.dart';

class CustomCardColumn extends StatelessWidget {
  const CustomCardColumn({
    Key key,
    RavenTheme ravenTheme,
    @required this.icon,
    @required this.text,
  })  : _ravenTheme = ravenTheme,
        super(key: key);

  final RavenTheme _ravenTheme;
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
          color: _ravenTheme.purple,
        ),
        SizedBox(
          height: 15.0,
        ),
        Text(
          text,
          style: TextStyle(
            color: _ravenTheme.offWhite,
            fontSize: 30.0,
          ),
        )
      ],
    );
  }
}
