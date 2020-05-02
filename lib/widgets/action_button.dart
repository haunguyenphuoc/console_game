import 'package:console_game/style.dart';
import 'package:flutter/material.dart';

class ActionButton extends StatelessWidget {
  final String name;
  ActionButton({this.name});
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 50,
      height: 50,
      decoration: BoxDecoration(
        color: kThemeColors.elementAt(5),
        borderRadius: BorderRadius.circular(90.0),
        boxShadow: [
          BoxShadow(
            color: kThemeColors.elementAt(6),
            blurRadius: 10.0,
            spreadRadius: 1.0,
            offset: Offset(-5.0, -5.0),
          ),
          BoxShadow(
            color: kThemeColors.elementAt(0),
            blurRadius: 10.0,
            spreadRadius: 5.0,
            offset: Offset(5.0, 5.0),
          )
        ],
      ),
      child: Center(
        child: Text(
          name,
          style: TextStyle(
            fontSize: 26.0,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
