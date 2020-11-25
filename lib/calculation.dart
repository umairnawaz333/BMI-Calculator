import 'dart:math';
import 'main.dart';

class Calculation {
  Calculation({this.heigh, this.weight});

  final int heigh;
  final int weight;
  double _result;

  String Calculations() {
    _result = weight / pow(heigh / 100, 2);
    return _result.toStringAsFixed(1);
  }

  String get_result() {
    if (_result >= 25) {
      return 'Over Weight';
    } else if (_result >= 18 && _result < 25) {
      return 'Normal';
    } else {
      return 'Under Weight';
    }
  }

  String get_suggestion() {
    if (_result >= 25) {
      return 'You have a higher than Normal body weight. Try to more Exercise';
    } else if (_result > 18 && _result < 25) {
      return 'You hve a Normal Body Weight. Good Job';
    } else {
      return 'You have a lower than Normal body weight. You need to eat bit more';
    }
  }
}
