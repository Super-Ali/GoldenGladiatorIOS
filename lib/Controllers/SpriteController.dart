import 'dart:async';

import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:test_app/Constants/Controllers.dart';
import 'package:test_app/Constants/Sprites.dart';

class SpriteController extends GetxController {
  bool isRight = true;
  double positionX = -1;
  double positionY = 1;
  String Action = HeroIdle;

  changeaction(newaction) {
    Action = newaction;
    update();
  }

  turnright() {
    isRight = true;
    update();
  }

  turnleft() {
    isRight = false;
    update();
  }

  walkright() {
    positionX += 0.02;

    update();
  }

  walkleft() {
    positionX -= 0.02;
    update();
  }

  attack() {
    changeaction(HeroAttack);

    update();
  }

  relax() {
    changeaction(HeroRelax);

    update();
  }
}
