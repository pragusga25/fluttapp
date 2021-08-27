import 'package:flutter/material.dart';

import './question.dart';
import './answer.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  int _qustionIndex = 0;

  @override
  Widget build(BuildContext context) {
    var qustions = [
      {
        'question': 'What is the capital of France?',
        'answers': ['Paris', 'London', 'Berlin']
      },
      {
        'question': 'What is the capital of Germany?',
        'answers': ['Berlin', 'Munich', 'Hamburg']
      },
      {
        'question': 'What is the capital of Italy?',
        'answers': ['Rome', 'Milan', 'Florence']
      },
      {
        'question': 'What is the capital of Spain?',
        'answers': ['Madrid', 'Barcelona', 'Valencia']
      },
    ];

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My First App'),
        ),
        body: Column(
          children: <Widget>[
            Question(
              qustions[_qustionIndex],
            ),
            Answer(_answerQuestion),
            Answer(_answerQuestion),
            Answer(_answerQuestion),
          ],
        ),
      ),
    );
  }

  void _answerQuestion() {
    setState(() {
      if (_qustionIndex < 3) _qustionIndex++;
    });
  }
}
