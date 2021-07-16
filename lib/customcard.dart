import 'package:flutter/material.dart';

class CustomCard extends StatelessWidget {
  final Color colour;
  final Widget child;
  CustomCard({required this.colour, required this.child});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        left: 15,
        right: 7.5,
        top: 15,
        bottom: 15,
      ),
      decoration: BoxDecoration(
        color: colour,
        borderRadius: BorderRadius.circular(10),
      ),
      child: child,
    );
  }
}
