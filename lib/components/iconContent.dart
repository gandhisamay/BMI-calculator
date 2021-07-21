import 'package:bmi_calculator/screens/input_page.dart';
import 'package:flutter/material.dart';

class IconContent extends StatelessWidget {
  final Gender gender;
  IconContent(this.gender);
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        gender == Gender.male
            ? (Icon(
                Icons.male,
                size: 80,
                color: Colors.white,
              ))
            : Icon(
                Icons.female,
                size: 80,
                color: Colors.white,
              ),
        SizedBox(
          height: 15,
        ),
        gender == Gender.male
            ? Text(
                'MALE',
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 18,
                ),
              )
            : Text(
                'FEMALE',
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.grey,
                ),
              ),
      ],
    );
  }
}
