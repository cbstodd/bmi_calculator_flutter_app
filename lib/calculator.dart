import 'dart:math';
import 'package:bmi_calculator/raven_theme_data.dart';
import 'package:flutter/cupertino.dart';

class Calculator {
  final int weight;
  final double height;
  double _bmiResult;

  Calculator({this.weight, this.height});

  String calculateBMI() {
    final int weightTimesSevOThree = 703 * weight;
    final double heightSquared = pow(height, 2);
    _bmiResult = weightTimesSevOThree / heightSquared;
    return _bmiResult.toStringAsFixed(1);
  }

  dynamic levelOfBMI({sevUnder, under, healthy, over, sevOver, verSevOver, theDefault}) {
    if (_bmiResult <= 15) {
      return sevUnder;
    } else if (_bmiResult > 15.0 && _bmiResult <= 18.5) {
      return under;
    } else if (_bmiResult > 18.5 && _bmiResult <= 25.0) {
      return healthy;
    } else if (_bmiResult > 25.0 && _bmiResult <= 30.0) {
      return over;
    } else if (_bmiResult > 30.0 && _bmiResult <= 35) {
      return sevOver;
    } else if (_bmiResult > 35.0 && _bmiResult <= 40.0) {
      return verSevOver;
    } else {
      return theDefault;
    }
  }

  String getTitle() {
    return levelOfBMI(
      sevUnder: "Very severely underweight",
      under: "Underweight",
      healthy: "Healthy",
      over: "Overweight",
      sevOver: "Severly Obease",
      verSevOver: "Very Severly Obease",
      theDefault: "You're probably going to die soon",
    );
  }

  String getDetails() {
    return levelOfBMI(
      sevUnder:
          "It is recommended that you start to eating a lot more food. Like seriously, what is wrong with you?",
      under: "Stop eating like a bird and eat some more food!",
      healthy: "You're all good, keep living the life you live.",
      over: "Prob need to go for some more walks and chill out on the eating.",
      sevOver: "Dude, you're looking large, try a salad every once in a while.",
      verSevOver:
          "OMG, you're killing yourself. Put down the french fries and go for a walk, and maybe start a cocaine habbit or something.",
      theDefault: "You're probably going to die soon so it really doesn't matter.",
    );
  }

  Color getColor() {
    return levelOfBMI(
      sevUnder: kDanger,
      under: kWarning,
      healthy: kSuccess,
      over: kInfo,
      sevOver: kWarning,
      verSevOver: kDanger,
      theDefault: kDanger,
    );
  }
}
