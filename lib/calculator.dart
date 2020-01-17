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

  String getTitle() {
    if (_bmiResult <= 15) {
      return "Very severely underweight";
    } else if (_bmiResult > 15.0 && _bmiResult <= 18.5) {
      return "Underweight";
    } else if (_bmiResult > 18.5 && _bmiResult <= 25.0) {
      return "Healthy";
    } else if (_bmiResult > 25.0 && _bmiResult <= 30.0) {
      return "Overweight";
    } else if (_bmiResult > 30.0 && _bmiResult <= 35) {
      return "Severly Obease";
    } else if (_bmiResult > 35.0 && _bmiResult <= 40.0) {
      return "Very Severly Obease";
    } else {
      return "You're probably going to die soon";
    }
  }

  String getDetails() {
    if (_bmiResult <= 15) {
      return "It is recommended that you start to eating a lot more food. Like seriously, what is wrong with you?";
    } else if (_bmiResult > 15.0 && _bmiResult <= 18.5) {
      return "Stop eating like a bird and eat some more food!";
    } else if (_bmiResult > 18.5 && _bmiResult <= 25.0) {
      return "You're all good, keep living the life you live.";
    } else if (_bmiResult > 25.0 && _bmiResult <= 30.0) {
      return "Prob need to go for some more walks and chill out on the eating.";
    } else if (_bmiResult > 30.0 && _bmiResult <= 35.0) {
      return "Dude, you're looking large, try a salad every once in a while.";
    } else if (_bmiResult > 35.0 && _bmiResult <= 40.0) {
      return "OMG, you're killing yourself. Put down the french fries and go for a walk, and maybe start a cocaine habbit or something.";
    } else {
      return "You're probably going to die soon so it really doesn't matter.";
    }
  }

  Color getColor() {
    if (_bmiResult <= 15) {
      return kDanger;
    } else if (_bmiResult > 15.0 && _bmiResult <= 18.5) {
      return kWarning;
    } else if (_bmiResult > 18.5 && _bmiResult <= 25.0) {
      return kSuccess;
    } else if (_bmiResult > 25.0 && _bmiResult <= 30.0) {
      return kInfo;
    } else if (_bmiResult > 30.0 && _bmiResult <= 35.0) {
      return kWarning;
    } else if (_bmiResult > 35.0 && _bmiResult <= 40.0) {
      return kDanger;
    } else {
      return kLightPurple;
    }
  }
}
