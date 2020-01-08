import 'package:bmi_calculator/raven_theme_data.dart';
import 'package:bmi_calculator/selected_gender.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:bmi_calculator/gender_card_info_column.dart';
import 'package:bmi_calculator/custom_card_container.dart';

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  static final SelectedGender _gender = SelectedGender();

  int _selectedIndex = 0;
  double height = 10.0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'DAMN RIGHT! CALCULATOR',
          style: kRobotoFontFamily20,
        ),
      ),
      body: Center(
        child: Container(
          decoration: linearGradientBackground(),
          child: Column(
            children: <Widget>[
              Expanded(
                child: Row(
                  children: <Widget>[
                    Expanded(
                      child: GestureDetector(
                        onTap: () {
                          setState(() {
                            _gender.maleSelected();
                          });
                        },
                        child: CustomCardContainer(
                          color: kMatteBlue,
                          borderColor: _gender.isMaleColor(),
                          child: GenderCardInfoColumn(
                            icon: FontAwesomeIcons.mars,
                            text: 'Male',
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: GestureDetector(
                        onTap: () {
                          setState(() {
                            _gender.femaleSelected();
                          });
                        },
                        child: CustomCardContainer(
                          color: kMatteBlue,
                          borderColor: _gender.isFemaleColor(),
                          child: GenderCardInfoColumn(
                            icon: FontAwesomeIcons.venus,
                            text: 'Female',
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Column(
                  children: <Widget>[
                    Expanded(
                      child: CustomCardContainer(
                        color: kMatteBlue,
                        borderColor: kMatteBlue,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: <Widget>[
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Text(
                                  "Height",
                                  style: kRobotoFontFamily30,
                                )
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Text(
                                  '${height.round()}',
                                  style: kRobotoFontFamily50,
                                ),
                                SizedBox(width: 10.0),
                                Text(
                                  "in",
                                  style: TextStyle(
                                    fontSize: 20.0,
                                    fontFamily: 'Roboto',
                                    color: kPinkPurple,
                                  ),
                                ),
                              ],
                            ),
                            Slider(
                              value: height,
                              min: 10.0,
                              max: 180.0,
                              activeColor: kPurple,
                              inactiveColor: kOffWhite,
                              onChanged: (double newValue) {
                                setState(() {
                                  height = newValue.roundToDouble();
                                  print(height);
                                });
                              },
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Row(
                  children: <Widget>[
                    Expanded(
                      child: CustomCardContainer(
                        color: kMatteBlue,
                        borderColor: kMatteBlue,
                      ),
                    ),
                    Expanded(
                      child: CustomCardContainer(
                        color: kMatteBlue,
                        borderColor: kMatteBlue,
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: kMatteBlue,
        unselectedItemColor: kPurple,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            title: Text(
              'Home',
              style: kRobotoFontFamily14,
            ),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.business),
            title: Text(
              'Business',
              style: kRobotoFontFamily14,
            ),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.school),
            title: Text(
              'School',
              style: kRobotoFontFamily14,
            ),
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: kOffWhite,
        onTap: _onItemTapped,
      ),
    );
  }
}
