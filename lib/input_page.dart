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
  static const double kMinHeight = 36;
  static const double kMaxHeight = 96;
  double height = 60;
  int weight = 180;

  static String inchesToFeet(double inches) {
    double total = inches / 12;
    return total.toStringAsFixed(2);
  }

  int selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'BMI CALCULATOR',
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
                                  '${inchesToFeet(height)}',
                                  style: kRobotoFontFamily50,
                                ),
                                SizedBox(width: 10.0),
                                Text(
                                  "ft",
                                  style: TextStyle(
                                    fontSize: 20.0,
                                    fontFamily: 'Roboto',
                                    color: kPinkPurple,
                                  ),
                                ),
                                SizedBox(width: 20.0),
                                Text(
                                  "-Or-",
                                  style: TextStyle(
                                    fontSize: 30.0,
                                    fontFamily: 'Roboto',
                                    color: kPurple,
                                  ),
                                ),
                                SizedBox(width: 20.0),
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
                              min: kMinHeight,
                              max: kMaxHeight,
                              activeColor: kPurple,
                              inactiveColor: kOffWhite,
                              onChanged: (double newValue) {
                                setState(() {
                                  height = newValue.roundToDouble();
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
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: <Widget>[
                                Text(
                                  '$weight',
                                  style: kRobotoFontFamily50,
                                ),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: <Widget>[
                                ClipOval(
                                  child: Material(
                                    color: kLightPurple, // button color
                                    child: InkWell(
                                      splashColor: kDanger, // inkwell color
                                      child: SizedBox(
                                        width: 40,
                                        height: 40,
                                        child: Icon(Icons.remove, color: kOffWhite),
                                      ),
                                      onTap: () {
                                        setState(() {
                                          weight -= 1;
                                        });
                                      },
                                      onLongPress: () {
                                        setState(() {
                                          weight -= 20;
                                        });
                                      },
                                    ),
                                  ),
                                ),
                                ClipOval(
                                  child: Material(
                                    color: kLightPurple, // button color
                                    child: InkWell(
                                      splashColor: kSuccess, // inkwell color
                                      child: SizedBox(
                                        width: 40,
                                        height: 40,
                                        child: Icon(Icons.add, color: kOffWhite),
                                      ),
                                      onTap: () {
                                        setState(() {
                                          weight += 1;
                                        });
                                      },
                                      onLongPress: () {
                                        setState(() {
                                          weight += 20;
                                        });
                                      },
                                    ),
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
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
        currentIndex: selectedIndex,
        selectedItemColor: kOffWhite,
        onTap: _onItemTapped,
      ),
    );
  }
}
