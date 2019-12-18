import 'package:flutter/material.dart';

class RavenThemeData {
  final Color darkBlue100 = Color(0xFF060616);
  final Color darkBlue80 = Color(0xFF161628);
  final Color darkBlue60 = Color(0xFF1B1B32);
  final Color darkBlue40 = Color(0xFF22223E);
  final Color darkBlue20 = Color(0xFF33335D);
  final Color matteBlue = Color(0xFF292A58);
  final Color blue = Color(0xFF381EFA);
  final Color purple = Color(0xFF825FFE);
  final Color mattePurple = Color(0xFF9E67AD);
  final Color lightPurple = Color(0xFFA29AFC);
  final Color pinkPurple = Color(0xFFC9ADF9);
  final Color offWhite = Color(0xFFF9F7F8);
  final Color danger = Color(0xFFFF5A87);
  final Color warning = Color(0xFFFFAB8B);
  final Color success = Color(0xFF0CCDC9);
  final Color info = Color(0xFF4B81EB);

  BoxDecoration LinearGradientBackground() {
    return BoxDecoration(
      // Box decoration takes a gradient
      gradient: LinearGradient(
        // Where the linear gradient begins and ends
        begin: Alignment.topCenter,
        end: Alignment.bottomCenter,
        // Add one stop for each color. Stops should increase from 0 to 1
        stops: [0.1, 0.5, 0.7, 0.9],
        colors: [
          darkBlue40,
          darkBlue60,
          darkBlue80,
          darkBlue100,
        ],
      ),
    );
  }
}
