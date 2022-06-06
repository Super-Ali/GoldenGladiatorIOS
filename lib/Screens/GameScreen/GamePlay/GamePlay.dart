import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:test_app/Constants/Colors.dart';
import 'package:test_app/Constants/Controllers.dart';
import 'package:test_app/Screens/GameScreen/GamePlay/GoldenGladiator.dart';

class GamePlay extends StatelessWidget {
  const GamePlay({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blueAccent,
      child: Stack(children: [
        Column(
          children: [
            Flexible(
                flex: 5,
                child: Container(
                  color: lightBrown,
                )),
            Flexible(
                flex: 1,
                child: Container(
                  color: darkBrown,
                ))
          ],
        ),
        GoldenGladiator()
      ]),
    );
  }
}
