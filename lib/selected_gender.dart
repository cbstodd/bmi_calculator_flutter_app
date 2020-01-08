import 'package:bmi_calculator/raven_theme_data.dart';
import 'package:flutter/material.dart';

enum Gender { Male, Female }

class SelectedGender {
  Gender selectedGender;

  Gender maleSelected() {
    return selectedGender = Gender.Male;
  }

  Gender femaleSelected() {
    return selectedGender = Gender.Female;
  }

  Color isMaleColor() {
    return selectedGender == Gender.Male ? kPurple : kMatteBlue;
  }

  Color isFemaleColor() {
    return selectedGender == Gender.Female ? kPurple : kMatteBlue;
  }
}
