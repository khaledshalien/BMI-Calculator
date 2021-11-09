import 'dart:math';

class Calculator {
 final int height;
 final int weight;
  Calculator(
    this.height,
    this.weight,
  );

late double _bmi;


  String Calbmi() {
    _bmi = weight / pow(height / 100, 2);
    return _bmi.toStringAsFixed(1);
  }

  String GetResult() {
    if (_bmi >= 25) {
      return "Over Weight";
    } else if (_bmi >= 18.5) {
      return "Normal";
    } else {
      return "UnderWeight";
    }
  }
}
