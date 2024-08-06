import 'package:flutter/material.dart';
import 'package:mvc_sample/Model/counter.dart';
import 'package:provider/provider.dart';

class CounterPage extends StatelessWidget {
  const CounterPage({super.key});

  @override
  Widget build(BuildContext context) {
    final counter = context.watch<Counter>();

    return Scaffold(
      appBar: AppBar(
        title: const Text('カウンター'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('カウント'),
            Text(counter.count.toString()),
            const Text('リスト'),
            Text(counter.countList.toString()),
            const Text('合計'),
            Text(counter.calculateTotal().toString()),
            ElevatedButton(
              onPressed: () {
                context.read<Counter>().increment();
              },
              child: const Text('カウントアップ'),
            ),
            ElevatedButton(
              onPressed: () {
                context.read<Counter>().append();
              }, 
              child: const Text('リストに追加'),
            ),
            ElevatedButton(
              onPressed: () {
                context.read<Counter>().reset();
              }, 
              child: const Text('リセット'),
            ),
          ],
        ),
      ),
    );
  }
}