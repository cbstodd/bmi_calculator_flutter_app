import 'package:bmi_calculator/raven_theme_data.dart';
import 'package:bmi_calculator/input_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(BMICalculator());

class BMICalculator extends StatelessWidget {
  final RavenTheme _ravenTheme = RavenTheme();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: _ravenTheme.ravenThemeData(),
      home: InputPage(),
    );
  }
}
