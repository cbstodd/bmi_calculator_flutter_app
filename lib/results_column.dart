import 'package:bmi_calculator/raven_theme_data.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ResultsColumn extends StatelessWidget {
  const ResultsColumn({
    @required this.titleText,
    @required this.titleColor,
    @required this.result,
    @required this.details,
    Key key,
  }) : super(key: key);

  final String titleText;
  final Color titleColor;
  final String result;
  final String details;

  @override
  Widget build(BuildContext context) {

  }
}
