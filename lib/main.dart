import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:mvc_sample/Model/counter.dart';
import 'package:mvc_sample/View/counter_page.dart';
import 'package:mvc_sample/Controller/count_controller.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => Counter()),
        Provider(create: (context) => CountController(context.read<Counter>())),
      ],
      child: MaterialApp(
        title: 'MVCサンプル',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: const CounterPage(),
      ),
    );
  }
}