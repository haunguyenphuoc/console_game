import 'package:console_game/widgets/action_button.dart';
import 'package:console_game/widgets/move_buttom.dart';
import 'package:flutter/material.dart';
import 'style.dart';
import 'widgets/option_button.dart';

void main() => runApp(ConsoleGame());

class ConsoleGame extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kThemeColors.elementAt(6),
      body: SafeArea(
        child: Stack(
          children: <Widget>[
            Container(
              decoration: BoxDecoration(
                color: kThemeColors.elementAt(0),
                gradient: new LinearGradient(
                  colors: [
                    kThemeColors.elementAt(6),
                    kThemeColors.elementAt(5),
                    kThemeColors.elementAt(3),
                    kThemeColors.elementAt(2),
                  ],
                  begin: new Alignment(0.1, 0),
                  end: Alignment.bottomCenter,
                  tileMode: TileMode.clamp,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 10.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Container(
                    padding:
                        EdgeInsets.symmetric(vertical: 30.0, horizontal: 60.0),
                    width: double.infinity,
                    height: 350.0,
                    decoration: BoxDecoration(
                      color: Colors.black.withOpacity(0.9),
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.grey,
                      ),
                    ),
                  ),
                  SizedBox(height: 50.0),
                  // Expanded(
                  //   child: Row(
                  //     children: <Widget>[

                  //     ],
                  //   ),
                  // ),
                  Expanded(
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Row(
                          //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: <Widget>[
                            SizedBox(
                              width: 30.0,
                            ),
                            MoveButton(),
                            SizedBox(
                              width: 60.0,
                            ),
                            ActionButton(name: 'B'),
                          ],
                        ),
                        SizedBox(
                          width: 20.0,
                        ),
                        ActionButton(name: 'A'),
                      ],
                    ),
                  ),

                  Expanded(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        OptionButton(title: 'Select'),
                        OptionButton(title: 'Start'),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
