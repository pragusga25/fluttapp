import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final VoidCallback selectHandler;
  Answer(this.selectHandler);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: RaisedButton(
        color: Color(0xAAFF2211),
        hoverColor: Colors.red,
        child: Text(
          'Answer 1',
        ),
        onPressed: this.selectHandler,
      ),
    );
  }
}
