import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:test_app/Constants/Colors.dart';

class ControlButton extends StatelessWidget {
  final IconData buttonIcon;
  final Function action;

  const ControlButton(
      {Key? key, required this.buttonIcon, required this.action})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: FloatingActionButton(
        onPressed: () => action(),
        child: FaIcon(buttonIcon),
        backgroundColor: darkBrown,
        hoverColor: lightBrown,
        splashColor: Colors.amber,
      ),
    );
  }
}
