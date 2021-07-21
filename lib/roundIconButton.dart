import 'package:flutter/material.dart';

class RoundIconButton extends StatelessWidget {
  late final IconData icon;
  final Color? buttonColor;
  RoundIconButton({required this.icon, this.buttonColor});
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
      onPressed: () {},
      constraints: BoxConstraints.tightFor(width: 50.0, height: 50.0),
    );
  }
}
