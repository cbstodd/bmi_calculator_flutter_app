import 'package:bmi_calculator/custom_card_container.dart';
import 'package:bmi_calculator/raven_theme_data.dart';
import 'package:bmi_calculator/selected_gender.dart';
import 'package:flutter/material.dart';

class ResultsPage extends StatefulWidget {
  @override
  _ResultsPageState createState() => _ResultsPageState();
}

class _ResultsPageState extends State<ResultsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'BMI - RESULTS',
          style: kRobotoFontFamily20,
        ),
      ),
      body: Center(
        child: Container(
          decoration: linearGradientBackground(),
          child: Column(
            children: <Widget>[
              Expanded(
                flex: 9,
                child: Row(
                  children: <Widget>[
                    Expanded(
                      child: CustomCardContainer(
                        color: kMatteBlue,
                        borderColor: kMatteBlue,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: <Widget>[
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: <Widget>[
                                Text(
                                  'Weight:',
                                  style: TextStyle(
                                    color: kLightPurple,
                                    fontSize: 20.0,
                                    fontFamily: 'Roboto',
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                flex: 1,
                child: Row(
                  children: <Widget>[
                    Expanded(
                      child: GestureDetector(
                        onTap: () {
                          Navigator.pushNamed(context, '/');
                        },
                        child: Container(
                          padding: EdgeInsets.only(bottom: 10.0),
                          color: kPurple,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: <Widget>[
                              Text(
                                'CALCULATOR',
                                style: kRobotoFontFamily20,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
