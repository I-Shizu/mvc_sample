import 'dart:core';
import 'package:flutter/material.dart';

class Counter extends ChangeNotifier{
  int get count => _count;

  List<int> get countList => _countList;

  int _count = 0;

  final List<int> _countList = [];

  void increment() {
    _count++;
  }

  void decrement() {
    _count--;
  }

  void append() {
    _countList.add(_count);
  }

  void reset() {
    _count = 0;
    _countList.clear();
  }

  int calculateTotal() {
    return _countList.fold(0, (previousValue, element) => previousValue + element);
  }

  bool isTotalMultipleOfFive() {
    return calculateTotal() % 5 == 0;
  }
}