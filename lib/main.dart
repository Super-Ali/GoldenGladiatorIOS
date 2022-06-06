import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:test_app/Controllers/SpriteController.dart';

import 'Screens/GameScreen/GameScreen.dart';

void main() {
  // Get.put(SpriteController(0));
  runApp(Animator());
}

class Animator extends StatelessWidget {
  const Animator({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: "Golden Gladiator",
      debugShowCheckedModeBanner: false,
      home: GameScreen(),
    );
  }
}


//Transform.scale(scaleX: -1, child: Image.asset(HeroIdle))

//  onPressed: () {
//           Gladiator.isleft.value == true
//               ? Gladiator.isleft.value = false
//               : Gladiator.isleft.value = true;
//         }