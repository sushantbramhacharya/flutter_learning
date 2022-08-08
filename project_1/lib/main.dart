
import 'package:flutter/material.dart';
import './quiz.dart';
import './result.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget
{
  @override 
  State<StatefulWidget> createState()
  {
    return _MyAppState();
  }

}
class _MyAppState extends State<MyApp>
{
  var _totalScore=0;
  var _questionsIndex=0;
  static const _questions=[
      {
      "questionText":"What's your favourite Color?",
      "answers":[
        {'text':'Black','score':6},{'text':'Red','score':10},{'text':'Green','score':3},{'text':'White','score':1}
      ]},
      {
      "questionText":"What's your favourite animal?",
      "answers":[
        {'text':'Rabbit','score':1},{'text':'Lion','score':10},{'text':'Snake','score':6},{'text':'Elephant','score':3}
      ]},
      {
      "questionText":"What's your favourite car?",
      "answers":[
        {'text':'Lambo','score':10},{'text':'Ferrari','score':6},{'text':'KIA','score':3},{'text':'Hyundai','score':1}
      ]},
    
    ];
  void _answerQuestions(int score)
  {
    _totalScore+=score;
    setState(() {
    _questionsIndex++;
    });
  }
  void _resetQuiz()
  {
    setState(() {
      _totalScore=0;
      _questionsIndex=0;
    });
  }
  @override
  Widget build(BuildContext context)
  {
    
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:Scaffold(
        appBar:AppBar
        (
          title:Text("My First App"),
        ),
        body:_questionsIndex<_questions.length?
        Quiz(answerQuestion:_answerQuestions,questions:_questions,questionsIndex: _questionsIndex,)
        :
        Result(_totalScore,_resetQuiz)
      )
    );
  }
}