import 'package:flutter/material.dart';

class BottomButton extends StatelessWidget {
  late final Function onTap;
  late final String text; 

  BottomButton({required this.onTap, required this.text});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        onTap();
      },
      child: Container(
        color: Color(0xFFEB1555),
        height: 50,
        width: double.infinity,
        child: Center(
          child: Text(
            text,
            style: TextStyle(
              fontSize: 20,
            ),
          ),
        ),
      ),
    );
  }
}
