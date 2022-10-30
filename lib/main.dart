import 'package:flutter/material.dart';

import 'models/unit_list.dart';
import 'widgets/unit_input.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'CamboAPP v2 - Page1',
      home: MyPageOne(),
    );
  }
}

class MyPageOne extends StatefulWidget {
  @override
  State<MyPageOne> createState() => _MyPageOneState();
}

class _MyPageOneState extends State<MyPageOne> {
  final List<Unit> unitInput = [
    Unit(
      unitCode: 'mm',
      unitName: 'millimetre',
    ),
    Unit(
      unitCode: 'cm',
      unitName: 'centimetre',
    ),
    Unit(
      unitCode: 'm',
      unitName: 'metre',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('converter'),
      ),
      body: Column(
        children: [
          const SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.all(18.0),
            child: UnitInput('input millimetre', 'mm', 'red'),
          ),
          const SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.all(18.0),
            child: UnitInput('input centimetre', 'cm', 'blue'),
          ),
          const SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.all(18.0),
            child: UnitInput('input metre', 'm', 'green'),
          ),
        ],
      ),
    );
  }
}
