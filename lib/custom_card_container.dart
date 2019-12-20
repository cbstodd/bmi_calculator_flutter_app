import 'package:flutter/material.dart';

class CustomCardContainer extends StatelessWidget {
  const CustomCardContainer({
    Key key,
    this.borderColor,
    this.child,
    @required this.color,
  }) : super(key: key);

  final Color borderColor;
  final Widget child;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: child,
      margin: EdgeInsets.all(15.0),
      padding: EdgeInsets.all(20.0),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.all(
          Radius.circular(5.0),
        ),
        border: Border.all(color: borderColor, width: 1.0),
      ),
    );
  }
}
