import 'package:flutter/material.dart';
import 'customcard.dart';
import 'iconContent.dart';

const Color colorCustomCard = Color(0xFF1D1E33);
const Color inactiveColorCard = Color(0xFF111328);

enum Gender { male, female, initial }

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Gender selectedGender = Gender.initial;
  int height = 180;
  int age = 30;
  int weight = 50;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
        centerTitle: true,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        selectedGender = Gender.male;
                      });
                    },
                    child: CustomCard(
                      colour: selectedGender == Gender.initial
                          ? inactiveColorCard
                          : selectedGender == Gender.male
                              ? colorCustomCard
                              : inactiveColorCard,
                      child: IconContent(Gender.male),
                    ),
                  ),
                ),
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        selectedGender = Gender.female;
                      });
                    },
                    child: CustomCard(
                      colour: selectedGender == Gender.initial
                          ? inactiveColorCard
                          : selectedGender == Gender.female
                              ? colorCustomCard
                              : inactiveColorCard,
                      child: IconContent(Gender.female),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: GestureDetector(
              child: CustomCard(
                colour: colorCustomCard,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'HEIGHT',
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.grey,
                      ),
                    ),
                    Text(
                      '${height}cm',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w900,
                        fontSize: 45,
                      ),
                    ),
                    Slider(
                      value: height.toDouble(),
                      max: 220.0,
                      min: 120.0,
                      activeColor: Colors.white,
                      inactiveColor: Colors.grey,
                      onChanged: (newValue) {
                        setState(() {
                          height = newValue.round();
                        });
                      },
                    ),
                  ],
                ),
              ),
            ),
          ),
          Expanded(
            child: Row(
              children: [
                CustomCard(
                  colour: colorCustomCard,
                  child: Column(
                    children: [
                      Text(
                        'WEIGHT',
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 18,
                        ),
                      ),
                      Text(
                        '$weight',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w900,
                          fontSize: 45,
                        ),
                      ),
                    ],
                  ),
                ),
                CustomCard(
                  colour: colorCustomCard,
                  child: Column(
                    children: [
                      Text(
                        'HEIGHT',
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 18,
                        ),
                      ),
                      Text(
                        '$age',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w900,
                          fontSize: 45,
                        ),
                      ),
                      Row(
                        children: [  
                        ],
                      )
                    ],
                  ),
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
