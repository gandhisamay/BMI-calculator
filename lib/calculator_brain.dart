import 'dart:math';

class CalculatorBrain {
  late final int height;
  late final int weight;

  late double _bmi;

  CalculatorBrain({required this.height, required this.weight});

  String getBMI() {
    _bmi = weight / pow(height / 100, 2);
    return _bmi.toStringAsFixed(1);
  }

  String getResult() {
    if (_bmi >= 25) {
      return 'OVERWEIGHT';
    } else if (_bmi >= 18.5) {
      return 'NORMAL';
    } else {
      return 'UNDERWEIGHT';
    }
  }

  String getInterpretation(){
    if (_bmi >= 25) {
      return 'You should include exercise in your routine, for healthier life';
    } else if (_bmi >= 18.5) {
      return 'You have maintained your body well, well done!';
    } else {
      return 'You should increase your diet a bit for better results!';
    }
  }
}
