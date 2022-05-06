import 'dart:math';
import 'input_Page.dart';
import 'finalPage.dart';

class calculation {
  calculation({required this.height, required this.weight});

  final int height;
  final int weight;
  double _bmi = 0;

  String CalculateBmi() {
    _bmi = weight / pow(height / 100, 2);
    return _bmi.toStringAsFixed(1);
  }

  String Result() {
    if (_bmi >= 25) {
      return 'HIGH BMI';
    } else if (_bmi >= 18.5) {
      return 'NORMAL';
    } else {
      return 'LOW BMI';
    }
  }

  String Interpritation() {
    if (_bmi >= 25) {
      return 'The higher your BMI, the higher your risk for certain diseases such as heart disease, high blood pressure, type 2 diabetes, gallstones, breathing problems, and certain cancers.';
    } else if (_bmi >= 18.5) {
      return 'GOOD  JOB  Your BMI is UptoDAte';
    } else {
      return 'A low BMI can indicate too low body fatness. ...\n  your BMI is less than 18.5, it falls within the underweight range';
    }
  }
}
