import 'package:bmi_calculator/raven_theme_data.dart';
import 'package:bmi_calculator/selected_gender.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:bmi_calculator/custom_card_column.dart';
import 'package:bmi_calculator/custom_card_container.dart';

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  final RavenTheme _ravenTheme = RavenTheme();
  final SelectedGender _gender = SelectedGender();

  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('DAMN RIGHT! CALCULATOR'),
      ),
      body: Center(
        child: Container(
          decoration: _ravenTheme.linearGradientBackground(),
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
                          color: _ravenTheme.matteBlue,
                          borderColor: _gender.isMaleColor(),
                          child: CustomCardColumn(
                            icon: FontAwesomeIcons.mars,
                            text: 'Male',
                            ravenTheme: _ravenTheme,
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
                          color: _ravenTheme.matteBlue,
                          borderColor: _gender.isFemaleColor(),
                          child: CustomCardColumn(
                            icon: FontAwesomeIcons.venus,
                            text: 'Female',
                            ravenTheme: _ravenTheme,
                          ),
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
                        color: _ravenTheme.matteBlue,
                        borderColor: _ravenTheme.matteBlue,
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
                        color: _ravenTheme.matteBlue,
                        borderColor: _ravenTheme.matteBlue,
                      ),
                    ),
                    Expanded(
                      child: CustomCardContainer(
                        color: _ravenTheme.matteBlue,
                        borderColor: _ravenTheme.matteBlue,
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
        backgroundColor: _ravenTheme.matteBlue,
        unselectedItemColor: _ravenTheme.purple,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            title: Text('Home'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.business),
            title: Text('Business'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.school),
            title: Text('School'),
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: _ravenTheme.offWhite,
        onTap: _onItemTapped,
      ),
    );
  }
}
