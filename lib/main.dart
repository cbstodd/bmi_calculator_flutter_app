import 'package:bmi_calculator/raven_theme_data.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(BMICalculator());

class BMICalculator extends StatelessWidget {
  final RavenThemeData _ravenTheme = RavenThemeData();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: _ravenTheme.darkBlue40,
        accentColor: _ravenTheme.purple,
        backgroundColor: _ravenTheme.darkBlue80,
        scaffoldBackgroundColor: Colors.transparent,
        buttonColor: _ravenTheme.purple,
        textTheme: TextTheme(
          headline: TextStyle(color: _ravenTheme.offWhite),
          body1: TextStyle(color: _ravenTheme.pinkPurple),
          caption: TextStyle(color: _ravenTheme.mattePurple),
        ),
      ),
      home: InputPage(),
    );
  }
}

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  final RavenThemeData _ravenTheme = RavenThemeData();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('BMI CALCULATOR'),
      ),
      body: Center(
        child: Container(
          decoration: _ravenTheme.LinearGradientBackground(),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  Container(
                    child: Text('Container 1'),
                    height: 150,
                    width: 150,
                    margin: EdgeInsets.all(20.0),
                    padding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 0),
                    decoration: BoxDecoration(
                      color: _ravenTheme.matteBlue,
                      borderRadius: BorderRadius.all(
                        Radius.circular(20.0),
                      ),
                    ),
                  ),
                  Container(
                    child: Text('Container 2'),
                    height: 150,
                    width: 150,
                    margin: EdgeInsets.all(20.0),
                    padding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 0),
                    decoration: BoxDecoration(
                      color: _ravenTheme.matteBlue,
                      borderRadius: BorderRadius.all(
                        Radius.circular(20.0),
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Container(
                    child: Text('Container 3'),
                    height: 200,
                    width: 300,
                    margin: EdgeInsets.fromLTRB(0, 0, 0, 20.0),
                    padding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 0),
                    decoration: BoxDecoration(
                      color: _ravenTheme.matteBlue,
                      borderRadius: BorderRadius.all(
                        Radius.circular(20.0),
                      ),
                    ),
                  ),
                ],
              ),
              Container(
                child: Text('Container (Full Width)'),
                height: 100,
                width: 100,
                margin: EdgeInsets.fromLTRB(20.0, 0, 20.0, 0),
                padding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 0),
                decoration: BoxDecoration(
                  color: _ravenTheme.matteBlue,
                  borderRadius: BorderRadius.all(
                    Radius.circular(20.0),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
      ),
    );
  }
}
