import 'package:flutter/material.dart';

class CustomCard extends StatelessWidget {
  final Color colour;
  CustomCard(this.colour);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
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
      ),
    );
  }
}