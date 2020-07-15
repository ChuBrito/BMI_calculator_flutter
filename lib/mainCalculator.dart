class MainCalculator {
  final int weight;
  final int height;
  double _bmi;
  MainCalculator(this.height, this.weight) {
    bMICalculator();
  }

  String bMICalculator() {
    _bmi = weight / (height / 100 * height / 100);
    return _bmi.toStringAsFixed(1);
  }

  String statusGenerator() {
    if (_bmi >= 25) {
      return 'Overweight';
    } else if (_bmi >= 18.5) {
      return 'Normal';
    } else {
      return 'Underweight';
    }
  }

  String messageGenerator() {
    if (_bmi >= 25) {
      return 'You need advice from a nutritionist, overweight needs care';
    } else if (_bmi >= 18.5) {
      return "You're in a good shape, stay strong";
    } else {
      return 'You need advice from a nutritionist, underweight needs care';
    }
  }
}
