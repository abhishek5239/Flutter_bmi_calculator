import 'dart:math';

import 'package:flutter/material.dart';

import 'main.dart';

class Calculator_brain {
  Calculator_brain({required this.height, required this.weight});
  final int height;
  final int weight;
  double _bmi = 0;
  String BMIcalculator() {
    // if (_bmi == null || weight == null || height == null)
    //   return " ";
    // else {
    //   _bmi = weight / pow(height / 100, 2);
    //   return _bmi.toStringAsFixed(1);
    // }
    _bmi = weight / pow(height / 100, 2);
    return _bmi.toStringAsFixed(1);
  }

  String get_result() {
    if (_bmi >= 25) {
      return 'Overwieght';
    } else if (_bmi > 18) {
      return 'Normal';
    } else {
      return 'Underweight';
    }
  }

  String get_interpretation() {
    if (_bmi >= 25) {
      return 'You have higher than normal body weight. Try to excercise more';
    } else if (_bmi > 18) {
      return 'You are having the normal body weight. Good Job';
    } else {
      return 'You have lower than normal body weight. Try to eat more';
    }
  }
}
