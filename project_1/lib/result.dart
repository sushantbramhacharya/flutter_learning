import 'dart:html';
import 'dart:ui';

import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'package:flutter/material.dart';
class Result extends StatelessWidget {
  final int score;
  final Function reset;
  Result(this.score,this.reset);

  String get resultPhrase
  {
    var resultText='You did it';
    if (score<=8)
    {
      resultText="You are innocent and awesome";
    }else if(score<=12)
    {
      resultText= 'Preety Innocent';
    }
    else if(score<=16)
    {
      resultText= 'Not good';
    }
    else{
      resultText='You are bad';
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
          child: Column(
            children: [
              Text(resultPhrase
              ,style: TextStyle(
                fontSize: 36,
                fontWeight: FontWeight.bold
              ),
              textAlign: TextAlign.center,),
              FlatButton(onPressed: reset,textColor:Colors.blue,child: Text("Reset"),)
            ],
          ),
        );
  }
}