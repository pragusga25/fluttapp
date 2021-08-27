import 'package:flutter/material.dart';

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
    List<String> qustions = [
      'What is your name?',
      'What is your quest?',
      'What is the capital of Assyria?',
      'What is the answer to life, the universe, and everything?',
    ];

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My First App'),
        ),
        body: Column(
          children: <Widget>[
            Text(qustions[_qustionIndex]),
            RaisedButton(
              child: Text('Answer Question'),
              onPressed: _answerQuestion,
            ),
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
