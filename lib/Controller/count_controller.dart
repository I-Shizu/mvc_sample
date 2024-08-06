import 'package:flutter/material.dart';
import 'package:mvc_sample/Model/counter.dart';

class CountController {
  CountController(Counter counter) : _counter = counter;

  final Counter _counter;

  void countUp() {
    _counter.increment();
  }

  void addToList(BuildContext context) {
    _counter.append();
    final total = _counter.calculateTotal();
    if(_counter.isTotalMultipleOfFive()) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text('合計は($total)5の倍数になりました'),
        ),
      );
    }
  }

  void clear() {
    _counter.reset();
  }
}