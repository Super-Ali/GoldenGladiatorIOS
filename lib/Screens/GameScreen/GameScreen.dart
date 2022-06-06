import 'package:flutter/material.dart';
import 'package:test_app/Constants/Colors.dart';
import 'package:test_app/Screens/GameScreen/GameControls/GameControls.dart';
import 'package:test_app/Screens/GameScreen/GamePlay/GamePlay.dart';

class GameScreen extends StatelessWidget {
  const GameScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: black,
        padding: EdgeInsets.all(13),
        child: Column(children: [
          Flexible(
            flex: 5,
            child: GamePlay(),
          ),
          Flexible(
            flex: 1,
            child: GameControls(),
          )
        ]),
      ),
    );
  }
}
