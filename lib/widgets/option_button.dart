import 'package:console_game/style.dart';
import 'package:flutter/material.dart';

class OptionButton extends StatelessWidget {
  final String title;
  OptionButton({this.title});
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      height: 40,
      decoration: BoxDecoration(
        color: kThemeColors.elementAt(2),
        borderRadius: BorderRadius.circular(10.0),
        boxShadow: [
          BoxShadow(
            color: kThemeColors.elementAt(5),
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
          '$title',
          style: TextStyle(
            color: Colors.black,
            fontSize: 20.0,
            letterSpacing: 1.5,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
    );
  }
}
