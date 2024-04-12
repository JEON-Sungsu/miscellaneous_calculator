import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:miscellaneous_calculator/presentation/view_model/home_screen/real_life_calculator_state.dart';

class RealLifeCalculatorViewModel with ChangeNotifier {
  RealLifeCalculatorState _state = const RealLifeCalculatorState();

  RealLifeCalculatorState get state => _state;

  void checkBMI(double weight, double height) {
    if (weight == 0 || height == 0) {
      return;
    }
    double bmiNumber = weight / ((height / 100) * (height / 100));

    switch (bmiNumber) {
      case >= 35:
        _state = _state.copyWith(bmiResult: '고도 비만 입니다.');
      case >= 30:
        _state = _state.copyWith(bmiResult: '2단계 비만 입니다.');
      case >= 25:
        _state = _state.copyWith(bmiResult: '1단계 비만 입니다.');
      case >= 23:
        _state = _state.copyWith(bmiResult: '과제중 입니다.');
      case >= 18.5:
        _state = _state.copyWith(bmiResult: '정상 체중 입니다.');
      default :
        _state = _state.copyWith(bmiResult: '저체중 입니다.');
    }

    notifyListeners();
  }

  void transferSquareMeter(double squareMeter) {
    double onePyung = 3.3058;
    _state = _state.copyWith(pyung: (squareMeter / onePyung).toStringAsFixed(2));
    notifyListeners();
  }

}