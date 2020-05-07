import 'package:console_game/style.dart';
import 'package:flutter/material.dart';

class MoveButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 120,
      height: 120,
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
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Flexible(
            child: GestureDetector(
              onTap: () {
                debugPrint('TOP');
              },
              child: Icon(
                Icons.arrow_drop_up,
                size: 36.0,
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Flexible(
                child: GestureDetector(
                  onTap: () {
                    debugPrint('LEFT');
                  },
                  child: Icon(
                    Icons.arrow_left,
                    size: 36.0,
                  ),
                ),
              ),
              Flexible(
                child: GestureDetector(
                  onTap: () {
                    debugPrint('RIGHT');
                  },
                  child: Icon(
                    Icons.arrow_right,
                    size: 36.0,
                  ),
                ),
              ),
            ],
          ),
          Flexible(
            child: GestureDetector(
              onTap: () {
                debugPrint('DOWN');
              },
              child: Icon(
                Icons.arrow_drop_down,
                size: 36.0,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
