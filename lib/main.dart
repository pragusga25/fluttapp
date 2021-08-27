import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {
  int index = 0;

  @override
  Widget build(BuildContext context) {
    List<String> qustions = [
      'What is your name?',
      'What is your quest?',
      'What is the capital of Assyria?',
    ];

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My First App'),
        ),
        body: Column(
          children: <Widget>[
            Text(qustions[index]),
            RaisedButton(
              child: Text('Next qustions'),
              onPressed: () {
                setState(() {
                  if (index < qustions.length - 1) index++;
                });
              },
            ),
            RaisedButton(
              child: Text('Previous qustions'),
              onPressed: () {
                setState(() {
                  if (index > 0) index--;
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}
