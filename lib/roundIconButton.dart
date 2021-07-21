import 'dart:ffi';

import 'package:flutter/material.dart';

class RoundIconButton extends StatelessWidget {
  late final IconData icon;
  final Color? buttonColor;
  late final Function onPressed;
  RoundIconButton({required this.icon, required this.onPressed, this.buttonColor});
  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      shape: CircleBorder(),
      elevation: 8.0,
      fillColor: buttonColor,
      child: Icon(
        icon,
        size: 25,
      ),
      onPressed: () {
        onPressed();
      },
      constraints: BoxConstraints.tightFor(width: 50.0, height: 50.0),
    );
  }
}
