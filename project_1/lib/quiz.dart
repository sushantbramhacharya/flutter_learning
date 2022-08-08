import 'package:flutter/material.dart';
import './answer.dart';
import './question.dart';
class Quiz extends StatelessWidget {
  final List questions;
  //final List<Map<String,Object>> questions;
  final Function answerQuestion;
  final int questionsIndex;
  const Quiz({@required this.questions,@required this.answerQuestion,@required this.questionsIndex});

  @override
  Widget build(BuildContext context) {
      return Column(
          children: [
          Question(questions[questionsIndex]['questionText']),
          ...(questions[questionsIndex]['answers'] as List).map((answer){
            return Answer(answer['text'] as String,()=>answerQuestion(answer['score'] as int));
          }).toList()
        ],);
  }
}