import 'package:bmi_calculator/raven_theme_data.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  final RavenTheme _ravenTheme = RavenTheme();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('BMI CALCULATOR'),
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
                      child: CustomCardContainer(
                        colorValue: _ravenTheme.matteBlue,
                        cardChild: CustomCardChildColumn(
                          customIcon: FontAwesomeIcons.mars,
                          customText: 'Male',
                          ravenTheme: _ravenTheme,
                        ),
                      ),
                    ),
                    Expanded(
                      child: CustomCardContainer(
                        colorValue: _ravenTheme.matteBlue,
                        cardChild: CustomCardChildColumn(
                          customIcon: FontAwesomeIcons.venus,
                          customText: 'Female',
                          ravenTheme: _ravenTheme,
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
                        colorValue: _ravenTheme.matteBlue,
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
                        colorValue: _ravenTheme.matteBlue,
                      ),
                    ),
                    Expanded(
                      child: CustomCardContainer(
                        colorValue: _ravenTheme.matteBlue,
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class CustomCardChildColumn extends StatelessWidget {
  final IconData customIcon;
  final String customText;
  final RavenTheme _ravenTheme;

  const CustomCardChildColumn({
    Key key,
    RavenTheme ravenTheme,
    @required this.customIcon,
    @required this.customText,
  })  : _ravenTheme = ravenTheme,
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(
          customIcon,
          size: 100.0,
          color: _ravenTheme.purple,
        ),
        SizedBox(
          height: 15.0,
        ),
        Text(
          customText,
          style: TextStyle(
            color: _ravenTheme.offWhite,
            fontSize: 30.0,
          ),
        )
      ],
    );
  }
}

// Custom Widget:
class CustomCardContainer extends StatelessWidget {
  final Color colorValue;
  final Widget cardChild;

  const CustomCardContainer({Key key, @required this.colorValue, this.cardChild}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: cardChild,
      margin: EdgeInsets.all(15.0),
      padding: EdgeInsets.all(20.0),
      decoration: BoxDecoration(
        color: colorValue,
        borderRadius: BorderRadius.all(
          Radius.circular(5.0),
        ),
      ),
    );
  }
}
