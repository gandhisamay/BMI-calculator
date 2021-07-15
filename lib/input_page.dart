import 'package:flutter/material.dart';
import 'customcard.dart';

const Color colorCustomCard = Color(0xFF1D1E33);

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI Calculator'),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Expanded(
            child: Row(
              children: [
                CustomCard(
                  colorCustomCard,
                ),
                CustomCard(
                  colorCustomCard,
                ),
              ],
            ),
          ),
          CustomCard(
            colorCustomCard,
          ),
          Expanded(
            child: Row(
              children: [
                CustomCard(
                  colorCustomCard,
                ),
                CustomCard(
                  colorCustomCard,
                ),
              ],
            ),
          ),
          Container(
            color: Color(0xFFEB1555),
            height: 50,
            width: double.infinity,
            child: Center(
              child: Text(
                'Calculate BMI',
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
