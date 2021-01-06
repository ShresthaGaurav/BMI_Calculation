import 'dart:math';

class CalculaterBmi {
  final int height;
  final int weight;

  CalculaterBmi({this.height, this.weight});

  double _bmi;

  String calculaterBmi() {
    _bmi = weight / pow(height / 100, 2);
    return _bmi.toStringAsFixed(1);
  }

  String getResult() {
    if (_bmi >= 25) {
      return "OverWeight";
    } else if (_bmi > 18.5) {
      return "normal";
    } else {
      return "underweight";
    }
  }

  String getInterpretation() {
    if (_bmi >= 25) {
      return "You are fat do some exercise fat person. ";
    } else if (_bmi > 18.5) {
      return "You are having a good time. ";
    } else {
      return "Eat some food u idiot. ";
    }
  }

}
