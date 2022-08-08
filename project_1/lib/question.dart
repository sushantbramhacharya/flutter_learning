import 'package:flutter/material.dart';
class Question extends StatelessWidget {
  final String _questionsText;
  Question(this._questionsText);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(10),
      child: Text(_questionsText,style: TextStyle(fontSize: 28),
      textAlign: TextAlign.center,));
  }
}