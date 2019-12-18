import 'package:bmi_calculator/raven_theme_data.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

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
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Expanded(
                    flex: 1,
                    child: Container(
                      child: Text('Container 1'),
                      height: 150,
                      margin: EdgeInsets.fromLTRB(10.0, 20.0, 5.0, 10.0),
                      padding: EdgeInsets.all(20.0),
                      decoration: BoxDecoration(
                        color: _ravenTheme.matteBlue,
                        borderRadius: BorderRadius.all(
                          Radius.circular(5.0),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: Container(
                      child: Text('Container 2'),
                      height: 150,
                      margin: EdgeInsets.fromLTRB(5.0, 20.0, 10.0, 10.0),
                      padding: EdgeInsets.all(20.0),
                      decoration: BoxDecoration(
                        color: _ravenTheme.matteBlue,
                        borderRadius: BorderRadius.all(
                          Radius.circular(5.0),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Expanded(
                    flex: 1,
                    child: Container(
                      child: Text('Container 2'),
                      height: 300,
                      margin: EdgeInsets.fromLTRB(10.0, 0, 10.0, 10.0),
                      padding: EdgeInsets.all(20.0),
                      decoration: BoxDecoration(
                        color: _ravenTheme.matteBlue,
                        borderRadius: BorderRadius.all(
                          Radius.circular(5.0),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Expanded(
                    flex: 1,
                    child: Container(
                      child: Text('Container 1'),
                      height: 150,
                      margin: EdgeInsets.fromLTRB(10.0, 0, 5.0, 0),
                      padding: EdgeInsets.all(20.0),
                      decoration: BoxDecoration(
                        color: _ravenTheme.matteBlue,
                        borderRadius: BorderRadius.all(
                          Radius.circular(5.0),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: Container(
                      child: Text('Container 2'),
                      height: 150,
                      margin: EdgeInsets.fromLTRB(5.0, 0, 10.0, 0),
                      padding: EdgeInsets.all(20.0),
                      decoration: BoxDecoration(
                        color: _ravenTheme.matteBlue,
                        borderRadius: BorderRadius.all(
                          Radius.circular(5.0),
                        ),
                      ),
                    ),
                  ),
                ],
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
