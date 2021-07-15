import 'package:flutter/material.dart';

class CardChild extends StatelessWidget {
  final String gender;
  CardChild(this.gender);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        gender == "MALE"
            ? (Icon(
                Icons.male,
                size: 80,
                color: Colors.white,
              ))
            : (Icon(
                Icons.female,
                size: 80,
                color: Colors.white,
              )),
        SizedBox(
          height: 15,
        ),
        Text(
          gender,
          style: TextStyle(
            fontSize: 20,
            color: Colors.grey,
          ),
        ),
      ],
    );
  }
}
