import 'dart:async';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:test_app/Constants/Controllers.dart';
import 'package:test_app/Constants/Sprites.dart';
import 'package:test_app/Controllers/SpriteController.dart';
import 'package:test_app/Screens/GameScreen/GameControls/ControlButton.dart';
import 'package:test_app/Screens/GameScreen/GameControls/MoveButton.dart';

class GameControls extends StatelessWidget {
  const GameControls({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    tempfun() {}

    return Container(
        padding: EdgeInsets.symmetric(horizontal: 100),
        child: Row(
          children: [
            ControlButton(
                buttonIcon: FontAwesomeIcons.dragon,
                action: () {
                  Get.find<SpriteController>().attack();
                  Future.delayed(Duration(milliseconds: 500), () {
                    Get.find<SpriteController>().changeaction(HeroIdle);
                  });
                }),
            ControlButton(
                buttonIcon: FontAwesomeIcons.explosion,
                action: () {
                  Get.find<SpriteController>().relax();
                  Future.delayed(Duration(milliseconds: 1100), () {
                    Get.find<SpriteController>().changeaction(HeroIdle);
                  });
                }),
            ControlButton(buttonIcon: FontAwesomeIcons.clover, action: tempfun),
            Expanded(child: Container()),
            MoveButton(
              icon: FontAwesomeIcons.handPointLeft,
              mover: Get.find<SpriteController>().walkleft,
              turner: Get.find<SpriteController>().turnleft,
            ),
            MoveButton(
                icon: FontAwesomeIcons.handPointRight,
                mover: Get.find<SpriteController>().walkright,
                turner: Get.find<SpriteController>().turnright)
          ],
        ));
  }
}
