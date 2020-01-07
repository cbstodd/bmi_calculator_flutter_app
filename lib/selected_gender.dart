import 'package:bmi_calculator/raven_theme_data.dart';
import 'package:flutter/material.dart';

enum Gender { Male, Female }

final RavenTheme _ravenTheme = RavenTheme();

class SelectedGender {
  Gender selectedGender;

  Gender maleSelected() {
    return selectedGender = Gender.Male;
  }

  Gender femaleSelected() {
    return selectedGender = Gender.Female;
  }

  Color isMaleColor() {
    return selectedGender == Gender.Male ? _ravenTheme.purple : _ravenTheme.matteBlue;
  }

  Color isFemaleColor() {
    return selectedGender == Gender.Female ? _ravenTheme.purple : _ravenTheme.matteBlue;
  }
}
