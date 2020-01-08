import 'package:flutter/material.dart';

const Color kDarkBlue100 = Color(0xFF060616);
const Color kDarkBlue80 = Color(0xFF0D0D31);
const Color kDarkBlue60 = Color(0xFF131349);
const Color kDarkBlue40 = Color(0xFF18185B);
const Color kDarkBlue20 = Color(0xFF1A1A60);
const Color kMatteBlue = Color(0xE6292A58);
const Color kBlue = Color(0xFF381EFA);
const Color kPurple = Color(0xFF825FFE);
const Color kMattePurple = Color(0xFF9E67AD);
const Color kLightPurple = Color(0xFFA29AFC);
const Color kPinkPurple = Color(0xFFC9ADF9);
const Color kOffWhite = Color(0xFFF9F7F8);
const Color kDanger = Color(0xFFFF5A87);
const Color kWarning = Color(0xFFFFAB8B);
const Color kSuccess = Color(0xFF0CCDC9);
const Color kInfo = Color(0xFF4B81EB);

const kfiraFontFamily30 = TextStyle(
  fontFamily: 'Fira_Sans',
  color: kOffWhite,
  fontSize: 30.0,
);

const kfiraFontFamily20 = TextStyle(
  fontFamily: 'Fira_Sans',
  color: kOffWhite,
  fontSize: 20.0,
);

const kRobotoFontFamily30 = TextStyle(
  fontFamily: 'Roboto',
  color: kOffWhite,
  fontSize: 30.0,
);

const kRobotoFontFamily20 = TextStyle(
  fontFamily: 'Roboto',
  color: kOffWhite,
  fontSize: 20.0,
);

const kRobotoFontFamily14 = TextStyle(
  fontFamily: 'Roboto',
  color: kOffWhite,
  fontSize: 14.0,
);

const kNunitoFontFamily30 = TextStyle(
  fontFamily: 'Nunito_Sans',
  color: kOffWhite,
  fontSize: 30.0,
);

const kNunitoFontFamily20 = TextStyle(
  fontFamily: 'Nunito_Sans',
  color: kOffWhite,
  fontSize: 20.0,
);

const kVarelaFontFamily30 = TextStyle(
  fontFamily: 'Varela_Round',
  color: kOffWhite,
  fontSize: 30.0,
);

const kVarelaFontFamily20 = TextStyle(
  fontFamily: 'Varela_Round',
  color: kOffWhite,
  fontSize: 20.0,
);

BoxDecoration linearGradientBackground() {
  return BoxDecoration(
    // Box decoration takes a gradient
    gradient: LinearGradient(
      // Where the linear gradient begins and ends
      begin: Alignment.topCenter,
      end: Alignment.bottomCenter,
      // Add one stop for each color. Stops should increase from 0 to 1
      stops: [0.1, 0.4, 0.7, 0.9],
      colors: [
        kDarkBlue40,
        kDarkBlue60,
        kDarkBlue80,
        kDarkBlue100,
      ],
    ),
  );
}

ThemeData ravenThemeData() {
  return ThemeData(
    primaryColor: kDarkBlue40,
    accentColor: kPurple,
    backgroundColor: kDarkBlue80,
    scaffoldBackgroundColor: Colors.transparent,
    buttonColor: kPurple,
    textTheme: TextTheme(
      headline: TextStyle(color: kOffWhite),
      body1: TextStyle(color: kPinkPurple),
      caption: TextStyle(color: kMattePurple),
    ),
  );
}
