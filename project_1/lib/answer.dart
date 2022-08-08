import 'package:flutter/material.dart';
class Answer extends StatelessWidget {
  final VoidCallback selectHandler;
  final String answerText;
  Answer(this.answerText,this.selectHandler);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.symmetric(vertical: 10),
      child: RaisedButton(
        onPressed: selectHandler,
        textColor: Colors.white,
        color: Colors.blue,
        child: Text(answerText)),
    );
  }
}