import 'dart:math';
class BmiCalculator {

  BmiCalculator({required this.Weight, required this.Height});

  int Height;
  int Weight;
  double _bmi = 0;

  String CalculateBMI() {
    _bmi = Weight / pow(Height / 100, 2);
    return _bmi.toStringAsFixed(1);
  }

  String CommentBMI() {
    if (_bmi >= 25) {
      return 'Over-Weight';
    }
    else if (_bmi >= 18.5) {
      return 'Normal';
    }
    else {
      return 'Under-Weight';
    }
  }

  String AdviseBMI() {
    if (_bmi >= 25) {
      return 'You have a higher than normal body weight. Try to Exercise 😓';
    }
    else if (_bmi > 18.5) {
      return 'You have a normal body weight. Good job! ✨';
    }
    else {
      return 'You have a lower than normal body weight. Try to eat more! 🍔';
    }
  }
}
