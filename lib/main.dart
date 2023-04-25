import 'dart:math';

import 'package:flutter/material.dart';
import 'widgets/body_widget.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Casino'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<int> _randomNumbers = [Random().nextInt(6), Random().nextInt(6), Random().nextInt(6)];

  void _generateRandomNumber() {
    Random random = Random();
    setState(() {
      _randomNumbers = [random.nextInt(7), random.nextInt(7), random.nextInt(7)];
    });
  }

  bool isWin(List<int> randomNumbers) {
    return randomNumbers.every((element) => element == randomNumbers[0]);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
        BodyWidget(randomNumbers: _randomNumbers),
        isWin(_randomNumbers) ? const Text("Gagné !", style: TextStyle(fontSize: 20, color: Colors.green),) : Container(),
        ]
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _generateRandomNumber,
        tooltip: 'Tirer !',
        child: const Icon(Icons.add),
      ),
    );
  }
}
