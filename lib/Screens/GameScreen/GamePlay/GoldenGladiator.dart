import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:test_app/Constants/Controllers.dart';
import 'package:test_app/Controllers/SpriteController.dart';

class GoldenGladiator extends StatelessWidget {
  const GoldenGladiator({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<SpriteController>(
      init: SpriteController(),
      builder: (_) => Container(
          padding: EdgeInsets.all(50),
          alignment: Alignment(_.positionX, _.positionY),
          child: Container(
            child: _.isRight
                ? Image.asset(_.Action)
                : Transform.scale(scaleX: -1, child: Image.asset(_.Action)),
            height: 150,
          )),
    );
  }
}
