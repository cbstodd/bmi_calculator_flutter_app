import 'package:bmi_calculator/input_page.dart';
import 'package:bmi_calculator/raven_theme_data.dart';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ResultsPage extends StatelessWidget {
  final String titleText;
  final Color titleColor;
  final String details;
  final String bmiResult;

  const ResultsPage({
    @required this.titleText,
    @required this.titleColor,
    @required this.details,
    @required this.bmiResult,
  });

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
                flex: 1,
                child: Row(
                  children: <Widget>[
                    Expanded(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text(
                            'Your Results',
                            style: TextStyle(
                              fontFamily: 'Roboto',
                              color: kPurple,
                              fontSize: 50.0,
                              fontWeight: FontWeight.w900,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                flex: 8,
                child: Row(
                  children: <Widget>[
                    Expanded(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          Wrap(
                            children: <Widget>[
                              Padding(
                                padding: EdgeInsets.only(left: 20, right: 20.0),
                                child: Text(
                                  '$titleText',
                                  style: TextStyle(
                                    color: titleColor,
                                    fontFamily: 'Roboto',
                                    fontSize: 30.0,
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                              )
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: <Widget>[
                              Text(
                                bmiResult,
                                style: kRobotoFontFamily50,
                              ),
                            ],
                          ),
                          Wrap(
                            children: <Widget>[
                              Padding(
                                padding: EdgeInsets.only(left: 40.0, right: 40.0),
                                child: Text(
                                  details,
                                  style: TextStyle(
                                    color: titleColor,
                                    fontFamily: 'Roboto',
                                    fontSize: 20.0,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
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
                          Navigator.push(context, MaterialPageRoute(builder: (context) {
                            return InputPage();
                          }));
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
