import 'dart:math';

class Calculate {
  int? age;
  int? height;
  int? weight;
  int? selecteGender;
  String? selectedActivityLevel;
  double? _bmrResult;
  double? _bmiResult;
  String? interpretation;

  // double? finalResult;

  Calculate(
      {this.age,
      this.height,
      this.weight,
      this.selecteGender,
      this.selectedActivityLevel,
      this.interpretation
      // this.finalResult
      });

  String bmi() {
    _bmiResult = weight!.toDouble() / pow(height! * 0.01, 2);
    return _bmiResult!.toStringAsFixed(1);
  }

  String getInterpretation() {
    if (_bmiResult! >= 25) {
      return 'You are Overweight!';
    } else if (_bmiResult! > 18.5) {
      return 'Normal Body Weight!';
    } else {
      return 'Underweight!';
    }
  }

  String bmr() {
    findGender();

    return _bmrResult!.toStringAsFixed(0);
  }

  void findGender() {
    if (selecteGender == 0) {
      calculateBmrForMale();
    } else if (selecteGender == 1) {
      calculateBmrForFemale();
    } else {}
  }

  double calculateBmrForMale() {
    _bmrResult = (10 * weight!.toDouble()) +
        (6.25 * height!.toDouble()) -
        (5 * age!.toDouble()) +
        5;

    activityMultiplyBMR();
    return _bmrResult!;
  }

  double calculateBmrForFemale() {
    _bmrResult = (10 * weight!.toDouble()) +
        (6.25 * height!.toDouble()) -
        (5 * age!.toDouble()) -
        161;

    activityMultiplyBMR();
    return _bmrResult!;
  }

  activityMultiplyBMR() {
    if (selectedActivityLevel == 'sedentary') {
      _bmrResult = _bmrResult! * 1.2;
    } else if (selectedActivityLevel == 'lightly') {
      _bmrResult = _bmrResult! * 1.375;
    } else if (selectedActivityLevel == 'moderately') {
      _bmrResult = _bmrResult! * 1.55;
    } else if (selectedActivityLevel == 'active') {
      _bmrResult = _bmrResult! * 1.725;
    } else if (selectedActivityLevel == 'very') {
      _bmrResult = _bmrResult! * 1.9;
    } else {
      print('None Selected');
    }
  }
}
