import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final VoidCallback selectHandler;
  final String answer;

  Answer(this.selectHandler, this.answer);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: RaisedButton(
        color: Color(0xAAFF2211),
        hoverColor: Colors.red,
        child: Text(
          this.answer,
        ),
        onPressed: this.selectHandler,
      ),
    );
  }
}
