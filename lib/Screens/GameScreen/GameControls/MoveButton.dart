import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:test_app/Screens/GameScreen/GameControls/ControlButton.dart';

import '../../../Constants/Sprites.dart';
import '../../../Controllers/SpriteController.dart';

class MoveButton extends StatelessWidget {
  Function turner;
  Function mover;
  IconData icon;
  MoveButton(
      {Key? key, required this.icon, required this.mover, required this.turner})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    bool buttonPressed = false;
    bool loopActive = false;

    void tomove() async {
      if (loopActive) return;

      loopActive = true;

      while (buttonPressed) {
        mover();

        await Future.delayed(Duration(milliseconds: 200));
      }
      loopActive = false;
    }

    return GetBuilder(
      init: SpriteController(),
      builder: (_) => Listener(
        onPointerDown: (event) {
          buttonPressed = true;
          tomove();
          Get.find<SpriteController>().changeaction(HeroWalk);
          turner();
        },
        onPointerUp: (event) {
          buttonPressed = false;
          Get.find<SpriteController>().changeaction(HeroIdle);
        },
        child: ControlButton(
          buttonIcon: icon,
          action: () {},
        ),
      ),
    );
  }
}
