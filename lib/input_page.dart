import 'package:flutter/material.dart';
import 'customcard.dart';

const Color colorCustomCard = Color(0xFF1D1E33);
const Color inactiveColorCard = Color(0xFF111328);

enum Gender { male, female, initial }

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Gender selectedGender = Gender.initial;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
        centerTitle: true,
      ),
      body: Column(
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
                      colour: selectedGender == Gender.initial? inactiveColorCard: selectedGender == Gender.male? colorCustomCard: inactiveColorCard,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.male,
                            size: 80,
                            color: Colors.white,
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          Text(
                            'MALE',
                            style: TextStyle(
                              color: Colors.grey,
                              fontSize: 18,
                            ),
                          ),
                        ],
                      ),
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
                      colour: selectedGender == Gender.initial? inactiveColorCard: selectedGender == Gender.female? colorCustomCard: inactiveColorCard,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.female,
                            size: 80,
                            color: Colors.white,
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          Text(
                            'FEMALE',
                            style: TextStyle(
                              color: Colors.grey,
                              fontSize: 18,
                            ),
                          ),
                        ],
                      ),
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
                child: Text(''),
              ),
            ),
          ),
          Expanded(
            child: Row(
              children: [
                CustomCard(
                  colour: colorCustomCard,
                  child: Text(''),
                ),
                CustomCard(
                  colour: colorCustomCard,
                  child: Text(''),
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
